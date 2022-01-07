; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_tgt.c_bnx2fc_alloc_conn_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_tgt.c_bnx2fc_alloc_conn_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_hba = type { i64, i32, %struct.bnx2fc_rport** }
%struct.bnx2fc_rport = type { i64 }

@BNX2FC_NUM_MAX_SESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnx2fc_hba*, %struct.bnx2fc_rport*)* @bnx2fc_alloc_conn_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnx2fc_alloc_conn_id(%struct.bnx2fc_hba* %0, %struct.bnx2fc_rport* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.bnx2fc_hba*, align 8
  %5 = alloca %struct.bnx2fc_rport*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.bnx2fc_hba* %0, %struct.bnx2fc_hba** %4, align 8
  store %struct.bnx2fc_rport* %1, %struct.bnx2fc_rport** %5, align 8
  %8 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %4, align 8
  %9 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %8, i32 0, i32 1
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %4, align 8
  %12 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %4, align 8
  %15 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %18 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %4, align 8
  %19 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BNX2FC_NUM_MAX_SESS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %4, align 8
  %25 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %2
  br label %27

27:                                               ; preds = %50, %26
  %28 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %4, align 8
  %29 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %28, i32 0, i32 2
  %30 = load %struct.bnx2fc_rport**, %struct.bnx2fc_rport*** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %30, i64 %31
  %33 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %32, align 8
  %34 = icmp ne %struct.bnx2fc_rport* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %27
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @BNX2FC_NUM_MAX_SESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i64 0, i64* %6, align 8
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %4, align 8
  %48 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock_bh(i32* %48)
  store i64 -1, i64* %3, align 8
  br label %65

50:                                               ; preds = %42
  br label %27

51:                                               ; preds = %27
  %52 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %53 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %4, align 8
  %54 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %53, i32 0, i32 2
  %55 = load %struct.bnx2fc_rport**, %struct.bnx2fc_rport*** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %55, i64 %56
  store %struct.bnx2fc_rport* %52, %struct.bnx2fc_rport** %57, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %60 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %4, align 8
  %62 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock_bh(i32* %62)
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %3, align 8
  br label %65

65:                                               ; preds = %51, %46
  %66 = load i64, i64* %3, align 8
  ret i64 %66
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
