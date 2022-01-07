; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_lns_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_lns_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.csio_hw = type { i32 }

@n_evt_sm = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [56 x i8] c"ignoring event %d recv from did x%xin ln state[ready].\0A\00", align 1
@n_evt_drop = common dso_local global i32 0, align 4
@csio_lns_offline = common dso_local global i32 0, align 4
@CSIO_RNFE_DOWN = common dso_local global i32 0, align 4
@CSIO_LN_FC_LINKDOWN = common dso_local global i32 0, align 4
@csio_lns_uninit = common dso_local global i32 0, align 4
@CSIO_RNFE_CLOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"unexp ln event %d recv from did:x%x in ln state[uninit].\0A\00", align 1
@n_evt_unexp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_lnode*, i32)* @csio_lns_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_lns_ready(%struct.csio_lnode* %0, i32 %1) #0 {
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
  switch i32 %15, label %96 [
    i32 130, label %16
    i32 129, label %26
    i32 131, label %53
    i32 132, label %80
    i32 128, label %88
  ]

16:                                               ; preds = %2
  %17 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %20 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @csio_ln_dbg(%struct.csio_lnode* %17, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %24 = load i32, i32* @n_evt_drop, align 4
  %25 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %23, i32 %24)
  br label %107

26:                                               ; preds = %2
  %27 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %28 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %27, i32 0, i32 1
  %29 = load i32, i32* @csio_lns_offline, align 4
  %30 = call i32 @csio_set_state(i32* %28, i32 %29)
  %31 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %32 = load i32, i32* @CSIO_RNFE_DOWN, align 4
  %33 = call i32 @csio_post_event_rns(%struct.csio_lnode* %31, i32 %32)
  %34 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %35 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %38 = load i32, i32* @CSIO_LN_FC_LINKDOWN, align 4
  %39 = call i32 @csio_lnode_async_event(%struct.csio_lnode* %37, i32 %38)
  %40 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %41 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %40, i32 0, i32 0
  %42 = call i32 @spin_lock_irq(i32* %41)
  %43 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %44 = call i32 @csio_is_phys_ln(%struct.csio_lnode* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %26
  %47 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %48 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @list_del_init(i32* %50)
  br label %52

52:                                               ; preds = %46, %26
  br label %107

53:                                               ; preds = %2
  %54 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %55 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %54, i32 0, i32 1
  %56 = load i32, i32* @csio_lns_offline, align 4
  %57 = call i32 @csio_set_state(i32* %55, i32 %56)
  %58 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %59 = load i32, i32* @CSIO_RNFE_DOWN, align 4
  %60 = call i32 @csio_post_event_rns(%struct.csio_lnode* %58, i32 %59)
  %61 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %62 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock_irq(i32* %62)
  %64 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %65 = load i32, i32* @CSIO_LN_FC_LINKDOWN, align 4
  %66 = call i32 @csio_lnode_async_event(%struct.csio_lnode* %64, i32 %65)
  %67 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %68 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %67, i32 0, i32 0
  %69 = call i32 @spin_lock_irq(i32* %68)
  %70 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %71 = call i32 @csio_is_phys_ln(%struct.csio_lnode* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %53
  %74 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %75 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @list_del_init(i32* %77)
  br label %79

79:                                               ; preds = %73, %53
  br label %107

80:                                               ; preds = %2
  %81 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %82 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %81, i32 0, i32 1
  %83 = load i32, i32* @csio_lns_uninit, align 4
  %84 = call i32 @csio_set_state(i32* %82, i32 %83)
  %85 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %86 = load i32, i32* @CSIO_RNFE_CLOSE, align 4
  %87 = call i32 @csio_post_event_rns(%struct.csio_lnode* %85, i32 %86)
  br label %107

88:                                               ; preds = %2
  %89 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %90 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %89, i32 0, i32 1
  %91 = load i32, i32* @csio_lns_offline, align 4
  %92 = call i32 @csio_set_state(i32* %90, i32 %91)
  %93 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %94 = load i32, i32* @CSIO_RNFE_DOWN, align 4
  %95 = call i32 @csio_post_event_rns(%struct.csio_lnode* %93, i32 %94)
  br label %107

96:                                               ; preds = %2
  %97 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %100 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @csio_ln_dbg(%struct.csio_lnode* %97, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %104 = load i32, i32* @n_evt_unexp, align 4
  %105 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %103, i32 %104)
  %106 = call i32 @CSIO_DB_ASSERT(i32 0)
  br label %107

107:                                              ; preds = %96, %88, %80, %79, %52, %16
  ret void
}

declare dso_local %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode*) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_lnode*, i32) #1

declare dso_local i32 @csio_ln_dbg(%struct.csio_lnode*, i8*, i32, i32) #1

declare dso_local i32 @csio_set_state(i32*, i32) #1

declare dso_local i32 @csio_post_event_rns(%struct.csio_lnode*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @csio_lnode_async_event(%struct.csio_lnode*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @csio_is_phys_ln(%struct.csio_lnode*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @CSIO_DB_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
