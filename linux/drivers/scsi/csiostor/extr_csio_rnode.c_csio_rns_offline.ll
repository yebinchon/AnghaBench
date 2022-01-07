; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_rns_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_rns_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_rnode = type { i32, i32, i32 }
%struct.csio_lnode = type { i32 }

@n_evt_sm = common dso_local global i32* null, align 8
@csio_rns_ready = common dso_local global i32 0, align 4
@n_err_inval = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"ssni:x%x Ignoring event %d recv from did:x%x in rn state[offline]\0A\00", align 1
@n_evt_drop = common dso_local global i32 0, align 4
@csio_rns_uninit = common dso_local global i32 0, align 4
@csio_rns_disappeared = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"ssni:x%x unexp event %d recv from did:x%x in rn state[offline]\0A\00", align 1
@n_evt_unexp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_rnode*, i32)* @csio_rns_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_rns_offline(%struct.csio_rnode* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_rnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_lnode*, align 8
  %6 = alloca i32, align 4
  store %struct.csio_rnode* %0, %struct.csio_rnode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %8 = call %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode* %7)
  store %struct.csio_lnode* %8, %struct.csio_lnode** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %10 = load i32*, i32** @n_evt_sm, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CSIO_INC_STATS(%struct.csio_rnode* %9, i32 %14)
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %63 [
    i32 130, label %17
    i32 128, label %17
    i32 131, label %41
    i32 132, label %53
    i32 129, label %58
  ]

17:                                               ; preds = %2, %2
  %18 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %19 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %20 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %21 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @csio_rn_verify_rparams(%struct.csio_lnode* %18, %struct.csio_rnode* %19, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %17
  %27 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %28 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %27, i32 0, i32 1
  %29 = load i32, i32* @csio_rns_ready, align 4
  %30 = call i32 @csio_set_state(i32* %28, i32 %29)
  %31 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %32 = call i32 @__csio_reg_rnode(%struct.csio_rnode* %31)
  br label %40

33:                                               ; preds = %17
  %34 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %35 = load i32, i32* @n_err_inval, align 4
  %36 = call i32 @CSIO_INC_STATS(%struct.csio_rnode* %34, i32 %35)
  %37 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %38 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %37, i32 0, i32 1
  %39 = call i32 @csio_post_event(i32* %38, i32 132)
  br label %40

40:                                               ; preds = %33, %26
  br label %75

41:                                               ; preds = %2
  %42 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %43 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %44 = call i32 @csio_rn_flowid(%struct.csio_rnode* %43)
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %47 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @csio_ln_dbg(%struct.csio_lnode* %42, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %48)
  %50 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %51 = load i32, i32* @n_evt_drop, align 4
  %52 = call i32 @CSIO_INC_STATS(%struct.csio_rnode* %50, i32 %51)
  br label %75

53:                                               ; preds = %2
  %54 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %55 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %54, i32 0, i32 1
  %56 = load i32, i32* @csio_rns_uninit, align 4
  %57 = call i32 @csio_set_state(i32* %55, i32 %56)
  br label %75

58:                                               ; preds = %2
  %59 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %60 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %59, i32 0, i32 1
  %61 = load i32, i32* @csio_rns_disappeared, align 4
  %62 = call i32 @csio_set_state(i32* %60, i32 %61)
  br label %75

63:                                               ; preds = %2
  %64 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %65 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %66 = call i32 @csio_rn_flowid(%struct.csio_rnode* %65)
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %69 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @csio_ln_dbg(%struct.csio_lnode* %64, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67, i32 %70)
  %72 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %73 = load i32, i32* @n_evt_unexp, align 4
  %74 = call i32 @CSIO_INC_STATS(%struct.csio_rnode* %72, i32 %73)
  br label %75

75:                                               ; preds = %63, %58, %53, %41, %40
  ret void
}

declare dso_local %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode*) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_rnode*, i32) #1

declare dso_local i32 @csio_rn_verify_rparams(%struct.csio_lnode*, %struct.csio_rnode*, i32) #1

declare dso_local i32 @csio_set_state(i32*, i32) #1

declare dso_local i32 @__csio_reg_rnode(%struct.csio_rnode*) #1

declare dso_local i32 @csio_post_event(i32*, i32) #1

declare dso_local i32 @csio_ln_dbg(%struct.csio_lnode*, i8*, i32, i32, i32) #1

declare dso_local i32 @csio_rn_flowid(%struct.csio_rnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
