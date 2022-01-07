; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_esas2r_read_fs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_esas2r_read_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i64, i64, i32, i64, i32 }
%struct.esas2r_request = type { i32 }
%struct.esas2r_sg_context = type { i64, i32 }
%struct.esas2r_ioctl_fs = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ATTO_STS_OUT_OF_RSRC = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"esas2r_read_fs: out of requests\00", align 1
@fs_api_complete_req = common dso_local global i32 0, align 4
@get_physaddr_fs_api = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_read_fs(%struct.esas2r_adapter* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.esas2r_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.esas2r_request*, align 8
  %11 = alloca %struct.esas2r_sg_context, align 8
  %12 = alloca %struct.esas2r_ioctl_fs*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %141

20:                                               ; preds = %4
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %104

23:                                               ; preds = %20
  %24 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.esas2r_ioctl_fs*
  store %struct.esas2r_ioctl_fs* %27, %struct.esas2r_ioctl_fs** %12, align 8
  %28 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %28, i32 0, i32 2
  %30 = call i64 @mutex_lock_interruptible(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i64, i64* @ATTO_STS_OUT_OF_RSRC, align 8
  %35 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %12, align 8
  %36 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %141

39:                                               ; preds = %23
  %40 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %41 = call %struct.esas2r_request* @esas2r_alloc_request(%struct.esas2r_adapter* %40)
  store %struct.esas2r_request* %41, %struct.esas2r_request** %10, align 8
  %42 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %43 = icmp eq %struct.esas2r_request* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = call i32 @esas2r_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %47 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %46, i32 0, i32 2
  %48 = call i32 @mutex_unlock(i32* %47)
  br label %33

49:                                               ; preds = %39
  %50 = load i32, i32* @fs_api_complete_req, align 4
  %51 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %52 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %12, align 8
  %54 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %11, i32 0, i32 1
  store i32 %55, i32* %56, align 8
  %57 = load i64, i64* @get_physaddr_fs_api, align 8
  %58 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %11, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %60 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %62 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %12, align 8
  %63 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %64 = call i32 @esas2r_process_fs_ioctl(%struct.esas2r_adapter* %61, %struct.esas2r_ioctl_fs* %62, %struct.esas2r_request* %63, %struct.esas2r_sg_context* %11)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %49
  %67 = load %struct.esas2r_ioctl_fs*, %struct.esas2r_ioctl_fs** %12, align 8
  %68 = getelementptr inbounds %struct.esas2r_ioctl_fs, %struct.esas2r_ioctl_fs* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ATTO_STS_OUT_OF_RSRC, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %72, %66
  br label %92

76:                                               ; preds = %49
  br label %77

77:                                               ; preds = %83, %76
  %78 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %79 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  %82 = xor i1 %81, true
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %85 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %88 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @wait_event_interruptible(i32 %86, i64 %89)
  br label %77

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %75
  %93 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %94 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %93, i32 0, i32 2
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %97 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %98 = call i32 @esas2r_free_request(%struct.esas2r_adapter* %96, %struct.esas2r_request* %97)
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %5, align 4
  br label %141

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %20
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %107 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %141

111:                                              ; preds = %104
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %8, align 8
  %115 = add nsw i64 %113, %114
  %116 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %117 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %115, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %111
  %121 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %122 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = sub nsw i64 %123, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %120, %111
  %128 = load i32, i32* %9, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 0, i32* %5, align 4
  br label %141

131:                                              ; preds = %127
  %132 = load i8*, i8** %7, align 8
  %133 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %134 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %8, align 8
  %137 = add nsw i64 %135, %136
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @memcpy(i8* %132, i64 %137, i32 %138)
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %131, %130, %110, %101, %33, %17
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.esas2r_request* @esas2r_alloc_request(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_debug(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @esas2r_process_fs_ioctl(%struct.esas2r_adapter*, %struct.esas2r_ioctl_fs*, %struct.esas2r_request*, %struct.esas2r_sg_context*) #1

declare dso_local i32 @wait_event_interruptible(i32, i64) #1

declare dso_local i32 @esas2r_free_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
