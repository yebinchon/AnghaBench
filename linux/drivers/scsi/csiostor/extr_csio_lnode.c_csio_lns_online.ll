; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_lns_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_lns_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.csio_hw = type { i32 }

@n_evt_sm = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"warn: FCOE link is up already Ignoring linkup on port:%d\0A\00", align 1
@n_evt_drop = common dso_local global i32 0, align 4
@csio_lns_ready = common dso_local global i32 0, align 4
@CSIO_LN_FC_LINKUP = common dso_local global i32 0, align 4
@csio_lns_uninit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"unexp ln event %d recv from did:x%x in ln state[uninit].\0A\00", align 1
@n_evt_unexp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_lnode*, i32)* @csio_lns_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_lns_online(%struct.csio_lnode* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_lnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_hw*, align 8
  store %struct.csio_lnode* %0, %struct.csio_lnode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %7 = call %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode* %6)
  store %struct.csio_hw* %7, %struct.csio_hw** %5, align 8
  %8 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %9 = load i32*, i32** @n_evt_sm, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %8, i32 %13)
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %54 [
    i32 129, label %16
    i32 130, label %25
    i32 128, label %39
    i32 131, label %39
  ]

16:                                               ; preds = %2
  %17 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %18 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %19 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @csio_ln_warn(%struct.csio_lnode* %17, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %23 = load i32, i32* @n_evt_drop, align 4
  %24 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %22, i32 %23)
  br label %64

25:                                               ; preds = %2
  %26 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %27 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %26, i32 0, i32 2
  %28 = load i32, i32* @csio_lns_ready, align 4
  %29 = call i32 @csio_set_state(i32* %27, i32 %28)
  %30 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %31 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_irq(i32* %31)
  %33 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %34 = load i32, i32* @CSIO_LN_FC_LINKUP, align 4
  %35 = call i32 @csio_lnode_async_event(%struct.csio_lnode* %33, i32 %34)
  %36 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %37 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %36, i32 0, i32 0
  %38 = call i32 @spin_lock_irq(i32* %37)
  br label %64

39:                                               ; preds = %2, %2
  %40 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %41 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %40, i32 0, i32 2
  %42 = load i32, i32* @csio_lns_uninit, align 4
  %43 = call i32 @csio_set_state(i32* %41, i32 %42)
  %44 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %45 = call i32 @csio_is_phys_ln(%struct.csio_lnode* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %49 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @list_del_init(i32* %51)
  br label %53

53:                                               ; preds = %47, %39
  br label %64

54:                                               ; preds = %2
  %55 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %58 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @csio_ln_dbg(%struct.csio_lnode* %55, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %62 = load i32, i32* @n_evt_unexp, align 4
  %63 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %61, i32 %62)
  br label %64

64:                                               ; preds = %54, %53, %25, %16
  ret void
}

declare dso_local %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode*) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_lnode*, i32) #1

declare dso_local i32 @csio_ln_warn(%struct.csio_lnode*, i8*, i32) #1

declare dso_local i32 @csio_set_state(i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @csio_lnode_async_event(%struct.csio_lnode*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @csio_is_phys_ln(%struct.csio_lnode*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @csio_ln_dbg(%struct.csio_lnode*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
