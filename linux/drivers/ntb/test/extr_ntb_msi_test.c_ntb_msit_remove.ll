; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_msi_test.c_ntb_msit_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_msi_test.c_ntb_msit_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_client = type { i32 }
%struct.ntb_dev = type { %struct.ntb_msit_ctx* }
%struct.ntb_msit_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_client*, %struct.ntb_dev*)* @ntb_msit_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_msit_remove(%struct.ntb_client* %0, %struct.ntb_dev* %1) #0 {
  %3 = alloca %struct.ntb_client*, align 8
  %4 = alloca %struct.ntb_dev*, align 8
  %5 = alloca %struct.ntb_msit_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.ntb_client* %0, %struct.ntb_client** %3, align 8
  store %struct.ntb_dev* %1, %struct.ntb_dev** %4, align 8
  %7 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %8 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %7, i32 0, i32 0
  %9 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %8, align 8
  store %struct.ntb_msit_ctx* %9, %struct.ntb_msit_ctx** %5, align 8
  %10 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %11 = call i32 @ntb_link_disable(%struct.ntb_dev* %10)
  %12 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %13 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %14 = call i32 @ntb_db_valid_mask(%struct.ntb_dev* %13)
  %15 = call i32 @ntb_db_set_mask(%struct.ntb_dev* %12, i32 %14)
  %16 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %17 = call i32 @ntb_msi_clear_mws(%struct.ntb_dev* %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %33, %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %21 = call i32 @ntb_peer_port_count(%struct.ntb_dev* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @kfree(i32 %31)
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %18

36:                                               ; preds = %18
  %37 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %38 = call i32 @ntb_clear_ctx(%struct.ntb_dev* %37)
  %39 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %5, align 8
  %40 = call i32 @ntb_msit_remove_dbgfs(%struct.ntb_msit_ctx* %39)
  ret void
}

declare dso_local i32 @ntb_link_disable(%struct.ntb_dev*) #1

declare dso_local i32 @ntb_db_set_mask(%struct.ntb_dev*, i32) #1

declare dso_local i32 @ntb_db_valid_mask(%struct.ntb_dev*) #1

declare dso_local i32 @ntb_msi_clear_mws(%struct.ntb_dev*) #1

declare dso_local i32 @ntb_peer_port_count(%struct.ntb_dev*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @ntb_clear_ctx(%struct.ntb_dev*) #1

declare dso_local i32 @ntb_msit_remove_dbgfs(%struct.ntb_msit_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
