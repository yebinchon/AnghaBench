; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_libsrp.c_srp_iu_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_libsrp.c_srp_iu_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iu_entry = type { i64, %struct.srp_target* }
%struct.srp_target = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"unexpected fifo state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iu_entry* @srp_iu_get(%struct.srp_target* %0) #0 {
  %2 = alloca %struct.iu_entry*, align 8
  %3 = alloca %struct.srp_target*, align 8
  %4 = alloca %struct.iu_entry*, align 8
  store %struct.srp_target* %0, %struct.srp_target** %3, align 8
  store %struct.iu_entry* null, %struct.iu_entry** %4, align 8
  %5 = load %struct.srp_target*, %struct.srp_target** %3, align 8
  %6 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = bitcast %struct.iu_entry** %4 to i8*
  %9 = load %struct.srp_target*, %struct.srp_target** %3, align 8
  %10 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @kfifo_out_locked(i32* %7, i8* %8, i32 8, i32* %11)
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.iu_entry* null, %struct.iu_entry** %2, align 8
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.iu_entry*, %struct.iu_entry** %4, align 8
  %19 = icmp ne %struct.iu_entry* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load %struct.iu_entry*, %struct.iu_entry** %4, align 8
  store %struct.iu_entry* %21, %struct.iu_entry** %2, align 8
  br label %29

22:                                               ; preds = %17
  %23 = load %struct.srp_target*, %struct.srp_target** %3, align 8
  %24 = load %struct.iu_entry*, %struct.iu_entry** %4, align 8
  %25 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %24, i32 0, i32 1
  store %struct.srp_target* %23, %struct.srp_target** %25, align 8
  %26 = load %struct.iu_entry*, %struct.iu_entry** %4, align 8
  %27 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.iu_entry*, %struct.iu_entry** %4, align 8
  store %struct.iu_entry* %28, %struct.iu_entry** %2, align 8
  br label %29

29:                                               ; preds = %22, %20, %15
  %30 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  ret %struct.iu_entry* %30
}

declare dso_local i32 @kfifo_out_locked(i32*, i8*, i32, i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
