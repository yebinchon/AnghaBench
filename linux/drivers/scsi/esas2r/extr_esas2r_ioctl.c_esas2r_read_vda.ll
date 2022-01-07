; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_esas2r_read_vda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_esas2r_read_vda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i64, i64, i32 }
%struct.esas2r_request = type { i32 }
%struct.atto_ioctl_vda = type { i32 }
%struct.esas2r_sg_context = type { i64, i64, %struct.esas2r_adapter*, %struct.esas2r_request* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"esas2r_read_vda: out of requests\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@vda_complete_req = common dso_local global i32 0, align 4
@VDA_BUFFER_HEADER_SZ = common dso_local global i64 0, align 8
@get_physaddr_vda = common dso_local global i64 0, align 8
@VDA_MAX_BUFFER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_read_vda(%struct.esas2r_adapter* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.esas2r_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.esas2r_request*, align 8
  %11 = alloca %struct.atto_ioctl_vda*, align 8
  %12 = alloca %struct.esas2r_sg_context, align 8
  %13 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %112

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %81

24:                                               ; preds = %21
  %25 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.atto_ioctl_vda*
  store %struct.atto_ioctl_vda* %28, %struct.atto_ioctl_vda** %11, align 8
  %29 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %30 = call %struct.esas2r_request* @esas2r_alloc_request(%struct.esas2r_adapter* %29)
  store %struct.esas2r_request* %30, %struct.esas2r_request** %10, align 8
  %31 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %32 = icmp eq %struct.esas2r_request* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = call i32 @esas2r_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %112

37:                                               ; preds = %24
  %38 = load i32, i32* @vda_complete_req, align 4
  %39 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %40 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %42 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %12, i32 0, i32 3
  store %struct.esas2r_request* %41, %struct.esas2r_request** %42, align 8
  %43 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %44 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %12, i32 0, i32 2
  store %struct.esas2r_adapter* %43, %struct.esas2r_adapter** %44, align 8
  %45 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %46 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VDA_BUFFER_HEADER_SZ, align 8
  %49 = add nsw i64 %47, %48
  %50 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %12, i32 0, i32 1
  store i64 %49, i64* %50, align 8
  %51 = load i64, i64* @get_physaddr_vda, align 8
  %52 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %12, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %54 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %56 = load %struct.atto_ioctl_vda*, %struct.atto_ioctl_vda** %11, align 8
  %57 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %58 = call i32 @esas2r_process_vda_ioctl(%struct.esas2r_adapter* %55, %struct.atto_ioctl_vda* %56, %struct.esas2r_request* %57, %struct.esas2r_sg_context* %12)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %37
  br label %62

62:                                               ; preds = %68, %61
  %63 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %64 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = xor i1 %66, true
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %70 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %73 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @wait_event_interruptible(i32 %71, i64 %74)
  br label %62

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76, %37
  %78 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %79 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %80 = call i32 @esas2r_free_request(%struct.esas2r_adapter* %78, %struct.esas2r_request* %79)
  br label %81

81:                                               ; preds = %77, %21
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @VDA_MAX_BUFFER_SIZE, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %112

86:                                               ; preds = %81
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %8, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i64, i64* @VDA_MAX_BUFFER_SIZE, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load i64, i64* @VDA_MAX_BUFFER_SIZE, align 8
  %95 = load i64, i64* %8, align 8
  %96 = sub nsw i64 %94, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %93, %86
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %112

102:                                              ; preds = %98
  %103 = load i8*, i8** %7, align 8
  %104 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %105 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = add nsw i64 %106, %107
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @memcpy(i8* %103, i64 %108, i32 %109)
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %102, %101, %85, %33, %18
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.esas2r_request* @esas2r_alloc_request(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_debug(i8*) #1

declare dso_local i32 @esas2r_process_vda_ioctl(%struct.esas2r_adapter*, %struct.atto_ioctl_vda*, %struct.esas2r_request*, %struct.esas2r_sg_context*) #1

declare dso_local i32 @wait_event_interruptible(i32, i64) #1

declare dso_local i32 @esas2r_free_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
