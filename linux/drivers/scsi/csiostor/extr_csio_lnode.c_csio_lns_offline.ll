; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_lns_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_lns_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.csio_hw = type { %struct.csio_lnode* }

@n_evt_sm = common dso_local global i32* null, align 8
@csio_lns_online = common dso_local global i32 0, align 4
@csio_ln_read_fcf_cbfn = common dso_local global i32 0, align 4
@n_err = common dso_local global i32 0, align 4
@csio_ln_vnp_read_cbfn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"ignoring event %d recv from did x%xin ln state[offline].\0A\00", align 1
@n_evt_drop = common dso_local global i32 0, align 4
@csio_lns_uninit = common dso_local global i32 0, align 4
@CSIO_RNFE_CLOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"unexp ln event %d recv from did:x%x in ln state[offline]\0A\00", align 1
@n_evt_unexp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_lnode*, i32)* @csio_lns_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_lns_offline(%struct.csio_lnode* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_lnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca %struct.csio_lnode*, align 8
  %7 = alloca i32, align 4
  store %struct.csio_lnode* %0, %struct.csio_lnode** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %9 = call %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode* %8)
  store %struct.csio_hw* %9, %struct.csio_hw** %5, align 8
  %10 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %11 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %10, i32 0, i32 0
  %12 = load %struct.csio_lnode*, %struct.csio_lnode** %11, align 8
  store %struct.csio_lnode* %12, %struct.csio_lnode** %6, align 8
  %13 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %14 = load i32*, i32** @n_evt_sm, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %13, i32 %18)
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %76 [
    i32 130, label %21
    i32 129, label %58
    i32 131, label %58
    i32 128, label %58
    i32 132, label %68
  ]

21:                                               ; preds = %2
  %22 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %23 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %22, i32 0, i32 1
  %24 = load i32, i32* @csio_lns_online, align 4
  %25 = call i32 @csio_set_state(i32* %23, i32 %24)
  %26 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %27 = call i32 @csio_is_phys_ln(%struct.csio_lnode* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %21
  %30 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %31 = load i32, i32* @csio_ln_read_fcf_cbfn, align 4
  %32 = call i32 @csio_ln_read_fcf_entry(%struct.csio_lnode* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %37 = load i32, i32* @n_err, align 4
  %38 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %36, i32 %37)
  br label %87

39:                                               ; preds = %29
  %40 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %41 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.csio_lnode*, %struct.csio_lnode** %6, align 8
  %45 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %44, i32 0, i32 2
  %46 = call i32 @list_add_tail(i32* %43, i32* %45)
  br label %47

47:                                               ; preds = %39, %21
  %48 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %49 = load i32, i32* @csio_ln_vnp_read_cbfn, align 4
  %50 = call i32 @csio_ln_vnp_read(%struct.csio_lnode* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %55 = load i32, i32* @n_err, align 4
  %56 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %47
  br label %87

58:                                               ; preds = %2, %2, %2
  %59 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %62 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @csio_ln_dbg(%struct.csio_lnode* %59, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63)
  %65 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %66 = load i32, i32* @n_evt_drop, align 4
  %67 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %65, i32 %66)
  br label %87

68:                                               ; preds = %2
  %69 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %70 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %69, i32 0, i32 1
  %71 = load i32, i32* @csio_lns_uninit, align 4
  %72 = call i32 @csio_set_state(i32* %70, i32 %71)
  %73 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %74 = load i32, i32* @CSIO_RNFE_CLOSE, align 4
  %75 = call i32 @csio_post_event_rns(%struct.csio_lnode* %73, i32 %74)
  br label %87

76:                                               ; preds = %2
  %77 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %80 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @csio_ln_dbg(%struct.csio_lnode* %77, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %81)
  %83 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %84 = load i32, i32* @n_evt_unexp, align 4
  %85 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %83, i32 %84)
  %86 = call i32 @CSIO_DB_ASSERT(i32 0)
  br label %87

87:                                               ; preds = %76, %68, %58, %57, %35
  ret void
}

declare dso_local %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode*) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_lnode*, i32) #1

declare dso_local i32 @csio_set_state(i32*, i32) #1

declare dso_local i32 @csio_is_phys_ln(%struct.csio_lnode*) #1

declare dso_local i32 @csio_ln_read_fcf_entry(%struct.csio_lnode*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @csio_ln_vnp_read(%struct.csio_lnode*, i32) #1

declare dso_local i32 @csio_ln_dbg(%struct.csio_lnode*, i8*, i32, i32) #1

declare dso_local i32 @csio_post_event_rns(%struct.csio_lnode*, i32) #1

declare dso_local i32 @CSIO_DB_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
