; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_rec_run_lvl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_rec_run_lvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { %struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.zfcp_dbf* }
%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_rec }
%struct.zfcp_dbf_rec = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@ZFCP_DBF_REC_RUN = common dso_local global i32 0, align 4
@ZFCP_DBF_TAG_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_dbf_rec_run_lvl(i32 %0, i8* %1, %struct.zfcp_erp_action* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.zfcp_erp_action*, align 8
  %7 = alloca %struct.zfcp_dbf*, align 8
  %8 = alloca %struct.zfcp_dbf_rec*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.zfcp_erp_action* %2, %struct.zfcp_erp_action** %6, align 8
  %10 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %6, align 8
  %11 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %13, align 8
  store %struct.zfcp_dbf* %14, %struct.zfcp_dbf** %7, align 8
  %15 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %16 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %15, i32 0, i32 2
  store %struct.zfcp_dbf_rec* %16, %struct.zfcp_dbf_rec** %8, align 8
  %17 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %18 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @debug_level_enabled(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %131

24:                                               ; preds = %3
  %25 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %26 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %25, i32 0, i32 0
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %30 = call i32 @memset(%struct.zfcp_dbf_rec* %29, i32 0, i32 32)
  %31 = load i32, i32* @ZFCP_DBF_REC_RUN, align 4
  %32 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %33 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %35 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @ZFCP_DBF_TAG_LEN, align 4
  %39 = call i32 @memcpy(i32 %36, i8* %37, i32 %38)
  %40 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %41 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %6, align 8
  %42 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %6, align 8
  %45 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %6, align 8
  %48 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @zfcp_dbf_set_common(%struct.zfcp_dbf_rec* %40, %struct.TYPE_8__* %43, %struct.TYPE_9__* %46, i32 %49)
  %51 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %6, align 8
  %52 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %55 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  store i32 %53, i32* %57, align 4
  %58 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %6, align 8
  %59 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %62 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  store i32 %60, i32* %64, align 8
  %65 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %6, align 8
  %66 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %69 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i32 %67, i32* %71, align 4
  %72 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %6, align 8
  %73 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %76 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 8
  %79 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %6, align 8
  %80 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %24
  %84 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %6, align 8
  %85 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.TYPE_10__* @sdev_to_zfcp(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = call i8* @atomic_read(i32* %88)
  %90 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %91 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i8* %89, i8** %93, align 8
  br label %120

94:                                               ; preds = %24
  %95 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %6, align 8
  %96 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %95, i32 0, i32 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = icmp ne %struct.TYPE_9__* %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %6, align 8
  %101 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = call i8* @atomic_read(i32* %103)
  %105 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %106 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i8* %104, i8** %108, align 8
  br label %119

109:                                              ; preds = %94
  %110 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %6, align 8
  %111 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = call i8* @atomic_read(i32* %113)
  %115 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %116 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i8* %114, i8** %118, align 8
  br label %119

119:                                              ; preds = %109, %99
  br label %120

120:                                              ; preds = %119, %83
  %121 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %122 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %126 = call i32 @debug_event(i32 %123, i32 %124, %struct.zfcp_dbf_rec* %125, i32 32)
  %127 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %128 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %127, i32 0, i32 0
  %129 = load i64, i64* %9, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  br label %131

131:                                              ; preds = %120, %23
  ret void
}

declare dso_local i32 @debug_level_enabled(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_rec*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @zfcp_dbf_set_common(%struct.zfcp_dbf_rec*, %struct.TYPE_8__*, %struct.TYPE_9__*, i32) #1

declare dso_local i8* @atomic_read(i32*) #1

declare dso_local %struct.TYPE_10__* @sdev_to_zfcp(i32) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_rec*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
