; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i64 }
%struct.fc_exch_mgr = type { i64, i64, i32, %struct.fc_lport* }
%struct.fc_lport = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fc_exch_pool = type { i32 }

@fc_cpu_mask = common dso_local global i64 0, align 8
@FC_XID_UNKNOWN = common dso_local global i64 0, align 8
@nr_cpu_ids = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"host%u: lport %6.6x: xid %d invalid CPU %d\0A:\00", align 1
@fc_cpu_order = common dso_local global i64 0, align 8
@fc_quarantine_exch = common dso_local global %struct.fc_exch zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"xid %x quarantined\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_exch* (%struct.fc_exch_mgr*, i64)* @fc_exch_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_exch* @fc_exch_find(%struct.fc_exch_mgr* %0, i64 %1) #0 {
  %3 = alloca %struct.fc_exch*, align 8
  %4 = alloca %struct.fc_exch_mgr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fc_lport*, align 8
  %7 = alloca %struct.fc_exch_pool*, align 8
  %8 = alloca %struct.fc_exch*, align 8
  %9 = alloca i64, align 8
  store %struct.fc_exch_mgr* %0, %struct.fc_exch_mgr** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %4, align 8
  %11 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %10, i32 0, i32 3
  %12 = load %struct.fc_lport*, %struct.fc_lport** %11, align 8
  store %struct.fc_lport* %12, %struct.fc_lport** %6, align 8
  store %struct.fc_exch* null, %struct.fc_exch** %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @fc_cpu_mask, align 8
  %15 = and i64 %13, %14
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.fc_exch* null, %struct.fc_exch** %3, align 8
  br label %95

20:                                               ; preds = %2
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @nr_cpu_ids, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @cpu_possible(i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %30 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %35 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i64 %37, i64 %38)
  store %struct.fc_exch* null, %struct.fc_exch** %3, align 8
  br label %95

40:                                               ; preds = %24
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %4, align 8
  %43 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %46, label %93

46:                                               ; preds = %40
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %4, align 8
  %49 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %47, %50
  br i1 %51, label %52, label %93

52:                                               ; preds = %46
  %53 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %4, align 8
  %54 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call %struct.fc_exch_pool* @per_cpu_ptr(i32 %55, i64 %56)
  store %struct.fc_exch_pool* %57, %struct.fc_exch_pool** %7, align 8
  %58 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %7, align 8
  %59 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %58, i32 0, i32 0
  %60 = call i32 @spin_lock_bh(i32* %59)
  %61 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %7, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %4, align 8
  %64 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = load i64, i64* @fc_cpu_order, align 8
  %68 = ashr i64 %66, %67
  %69 = call %struct.fc_exch* @fc_exch_ptr_get(%struct.fc_exch_pool* %61, i64 %68)
  store %struct.fc_exch* %69, %struct.fc_exch** %8, align 8
  %70 = load %struct.fc_exch*, %struct.fc_exch** %8, align 8
  %71 = icmp eq %struct.fc_exch* %70, @fc_quarantine_exch
  br i1 %71, label %72, label %76

72:                                               ; preds = %52
  %73 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  store %struct.fc_exch* null, %struct.fc_exch** %8, align 8
  br label %76

76:                                               ; preds = %72, %52
  %77 = load %struct.fc_exch*, %struct.fc_exch** %8, align 8
  %78 = icmp ne %struct.fc_exch* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load %struct.fc_exch*, %struct.fc_exch** %8, align 8
  %81 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = icmp ne i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @WARN_ON(i32 %85)
  %87 = load %struct.fc_exch*, %struct.fc_exch** %8, align 8
  %88 = call i32 @fc_exch_hold(%struct.fc_exch* %87)
  br label %89

89:                                               ; preds = %79, %76
  %90 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %7, align 8
  %91 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock_bh(i32* %91)
  br label %93

93:                                               ; preds = %89, %46, %40
  %94 = load %struct.fc_exch*, %struct.fc_exch** %8, align 8
  store %struct.fc_exch* %94, %struct.fc_exch** %3, align 8
  br label %95

95:                                               ; preds = %93, %28, %19
  %96 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  ret %struct.fc_exch* %96
}

declare dso_local i32 @cpu_possible(i64) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i64, i64) #1

declare dso_local %struct.fc_exch_pool* @per_cpu_ptr(i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.fc_exch* @fc_exch_ptr_get(%struct.fc_exch_pool*, i64) #1

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fc_exch_hold(%struct.fc_exch*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
