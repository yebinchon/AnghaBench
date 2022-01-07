; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_free_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_free_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_endpoint = type { %struct.beiscsi_conn*, i32, %struct.beiscsi_hba* }
%struct.beiscsi_conn = type { i64, i32 }
%struct.beiscsi_hba = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_endpoint*)* @beiscsi_free_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_free_ep(%struct.beiscsi_endpoint* %0) #0 {
  %2 = alloca %struct.beiscsi_endpoint*, align 8
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.beiscsi_conn*, align 8
  store %struct.beiscsi_endpoint* %0, %struct.beiscsi_endpoint** %2, align 8
  %5 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %2, align 8
  %6 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %5, i32 0, i32 2
  %7 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  store %struct.beiscsi_hba* %7, %struct.beiscsi_hba** %3, align 8
  %8 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %9 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %2, align 8
  %10 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @beiscsi_put_cid(%struct.beiscsi_hba* %8, i32 %11)
  %13 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %2, align 8
  %14 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %13, i32 0, i32 2
  store %struct.beiscsi_hba* null, %struct.beiscsi_hba** %14, align 8
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %16 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %2, align 8
  %19 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @BE_GET_CRI_FROM_CID(i32 %20)
  %22 = getelementptr inbounds i32*, i32** %17, i64 %21
  store i32* null, i32** %22, align 8
  %23 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %2, align 8
  %24 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %23, i32 0, i32 0
  %25 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %24, align 8
  %26 = icmp ne %struct.beiscsi_conn* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %46

28:                                               ; preds = %1
  %29 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %2, align 8
  %30 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %29, i32 0, i32 0
  %31 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %30, align 8
  store %struct.beiscsi_conn* %31, %struct.beiscsi_conn** %4, align 8
  %32 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %2, align 8
  %33 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %32, i32 0, i32 0
  store %struct.beiscsi_conn* null, %struct.beiscsi_conn** %33, align 8
  %34 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %35 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %40 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %41 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @beiscsi_free_mgmt_task_handles(%struct.beiscsi_conn* %39, i32 %42)
  %44 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %45 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %27, %38, %28
  ret void
}

declare dso_local i32 @beiscsi_put_cid(%struct.beiscsi_hba*, i32) #1

declare dso_local i64 @BE_GET_CRI_FROM_CID(i32) #1

declare dso_local i32 @beiscsi_free_mgmt_task_handles(%struct.beiscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
