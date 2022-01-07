; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_rec_run_wka.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_rec_run_wka.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fc_wka_port = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.zfcp_dbf* }
%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_rec }
%struct.zfcp_dbf_rec = type { %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@zfcp_dbf_rec_run_wka.level = internal constant i32 1, align 4
@ZFCP_DBF_REC_RUN = common dso_local global i32 0, align 4
@ZFCP_DBF_TAG_LEN = common dso_local global i32 0, align 4
@ZFCP_DBF_INVALID_LUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_dbf_rec_run_wka(i8* %0, %struct.zfcp_fc_wka_port* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.zfcp_fc_wka_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zfcp_dbf*, align 8
  %8 = alloca %struct.zfcp_dbf_rec*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.zfcp_fc_wka_port* %1, %struct.zfcp_fc_wka_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %5, align 8
  %11 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %13, align 8
  store %struct.zfcp_dbf* %14, %struct.zfcp_dbf** %7, align 8
  %15 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %16 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %15, i32 0, i32 2
  store %struct.zfcp_dbf_rec* %16, %struct.zfcp_dbf_rec** %8, align 8
  %17 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %18 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @debug_level_enabled(i32 %19, i32 1)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %86

27:                                               ; preds = %3
  %28 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %29 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %28, i32 0, i32 0
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %33 = call i32 @memset(%struct.zfcp_dbf_rec* %32, i32 0, i32 40)
  %34 = load i32, i32* @ZFCP_DBF_REC_RUN, align 4
  %35 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %36 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %38 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* @ZFCP_DBF_TAG_LEN, align 4
  %42 = call i32 @memcpy(i32 %39, i8* %40, i32 %41)
  %43 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %5, align 8
  %44 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %47 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %5, align 8
  %49 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %52 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @ZFCP_DBF_INVALID_LUN, align 4
  %54 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %55 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %58 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  store i32 %56, i32* %60, align 4
  %61 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %62 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  store i32 -1, i32* %64, align 4
  %65 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %66 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i32 -1, i32* %68, align 4
  %69 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %70 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 -1, i32* %72, align 4
  %73 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %74 = getelementptr inbounds %struct.zfcp_dbf_rec, %struct.zfcp_dbf_rec* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 -1, i32* %76, align 4
  %77 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %78 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.zfcp_dbf_rec*, %struct.zfcp_dbf_rec** %8, align 8
  %81 = call i32 @debug_event(i32 %79, i32 1, %struct.zfcp_dbf_rec* %80, i32 40)
  %82 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %83 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %82, i32 0, i32 0
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  br label %86

86:                                               ; preds = %27, %26
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug_level_enabled(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_rec*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_rec*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
