; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_msi_test.c_ntb_msit_dbgfs_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_msi_test.c_ntb_msit_dbgfs_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_msit_peer = type { i64, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"trigger irq %llu on peer %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @ntb_msit_dbgfs_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_msit_dbgfs_trigger(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ntb_msit_peer*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ntb_msit_peer*
  store %struct.ntb_msit_peer* %8, %struct.ntb_msit_peer** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.ntb_msit_peer*, %struct.ntb_msit_peer** %6, align 8
  %11 = getelementptr inbounds %struct.ntb_msit_peer, %struct.ntb_msit_peer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.ntb_msit_peer*, %struct.ntb_msit_peer** %6, align 8
  %19 = getelementptr inbounds %struct.ntb_msit_peer, %struct.ntb_msit_peer* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.ntb_msit_peer*, %struct.ntb_msit_peer** %6, align 8
  %26 = getelementptr inbounds %struct.ntb_msit_peer, %struct.ntb_msit_peer* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %27)
  %29 = load %struct.ntb_msit_peer*, %struct.ntb_msit_peer** %6, align 8
  %30 = getelementptr inbounds %struct.ntb_msit_peer, %struct.ntb_msit_peer* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.ntb_msit_peer*, %struct.ntb_msit_peer** %6, align 8
  %35 = getelementptr inbounds %struct.ntb_msit_peer, %struct.ntb_msit_peer* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ntb_msit_peer*, %struct.ntb_msit_peer** %6, align 8
  %38 = getelementptr inbounds %struct.ntb_msit_peer, %struct.ntb_msit_peer* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i32 @ntb_msi_peer_trigger(%struct.TYPE_4__* %33, i32 %36, i32* %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %17, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32) #1

declare dso_local i32 @ntb_msi_peer_trigger(%struct.TYPE_4__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
