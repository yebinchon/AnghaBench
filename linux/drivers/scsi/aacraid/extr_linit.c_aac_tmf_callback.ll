; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_tmf_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_tmf_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { i64 }
%struct.aac_hba_resp = type { i32 }
%struct.aac_hba_map_info = type { i32 }
%struct.aac_native_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.aac_hba_resp }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aac_tmf_callback(i8* %0, %struct.fib* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fib*, align 8
  %5 = alloca %struct.aac_hba_resp*, align 8
  %6 = alloca %struct.aac_hba_map_info*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.fib* %1, %struct.fib** %4, align 8
  %8 = load %struct.fib*, %struct.fib** %4, align 8
  %9 = getelementptr inbounds %struct.fib, %struct.fib* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.aac_native_hba*
  %12 = getelementptr inbounds %struct.aac_native_hba, %struct.aac_native_hba* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.aac_hba_resp* %13, %struct.aac_hba_resp** %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.aac_hba_map_info*
  store %struct.aac_hba_map_info* %15, %struct.aac_hba_map_info** %6, align 8
  %16 = load %struct.aac_hba_resp*, %struct.aac_hba_resp** %5, align 8
  %17 = getelementptr inbounds %struct.aac_hba_resp, %struct.aac_hba_resp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %22 [
    i32 129, label %19
    i32 130, label %20
    i32 131, label %21
    i32 128, label %21
  ]

19:                                               ; preds = %2
  store i32 -1, i32* %7, align 4
  br label %23

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %23

21:                                               ; preds = %2, %2
  store i32 0, i32* %7, align 4
  br label %23

22:                                               ; preds = %2
  store i32 -2, i32* %7, align 4
  br label %23

23:                                               ; preds = %22, %21, %20, %19
  %24 = load %struct.fib*, %struct.fib** %4, align 8
  %25 = call i32 @aac_fib_complete(%struct.fib* %24)
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %6, align 8
  %28 = getelementptr inbounds %struct.aac_hba_map_info, %struct.aac_hba_map_info* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
