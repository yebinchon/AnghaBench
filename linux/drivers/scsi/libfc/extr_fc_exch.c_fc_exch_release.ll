; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i32, i32, i32, i32 (i32*, i32)*, %struct.fc_exch_mgr*, i32 }
%struct.fc_exch_mgr = type { i32 }

@ESB_ST_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_exch*)* @fc_exch_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_release(%struct.fc_exch* %0) #0 {
  %2 = alloca %struct.fc_exch*, align 8
  %3 = alloca %struct.fc_exch_mgr*, align 8
  store %struct.fc_exch* %0, %struct.fc_exch** %2, align 8
  %4 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %5 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %4, i32 0, i32 5
  %6 = call i64 @atomic_dec_and_test(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %1
  %9 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %10 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %9, i32 0, i32 4
  %11 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %10, align 8
  store %struct.fc_exch_mgr* %11, %struct.fc_exch_mgr** %3, align 8
  %12 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %13 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %12, i32 0, i32 3
  %14 = load i32 (i32*, i32)*, i32 (i32*, i32)** %13, align 8
  %15 = icmp ne i32 (i32*, i32)* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %8
  %17 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %18 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %17, i32 0, i32 3
  %19 = load i32 (i32*, i32)*, i32 (i32*, i32)** %18, align 8
  %20 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %21 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %20, i32 0, i32 2
  %22 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %23 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 %19(i32* %21, i32 %24)
  br label %26

26:                                               ; preds = %16, %8
  %27 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %28 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ESB_ST_COMPLETE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %37 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %3, align 8
  %38 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mempool_free(%struct.fc_exch* %36, i32 %39)
  br label %41

41:                                               ; preds = %26, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mempool_free(%struct.fc_exch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
