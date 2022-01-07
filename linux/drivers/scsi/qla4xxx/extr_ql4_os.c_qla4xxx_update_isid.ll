; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_update_isid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_update_isid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.list_head = type { i32 }
%struct.dev_db_entry = type { i32* }

@QLA_ERROR = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.list_head*, %struct.dev_db_entry*)* @qla4xxx_update_isid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_update_isid(%struct.scsi_qla_host* %0, %struct.list_head* %1, %struct.dev_db_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.dev_db_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store %struct.dev_db_entry* %2, %struct.dev_db_entry** %7, align 8
  %10 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %11 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 31
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %36, %3
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = shl i32 %21, 5
  %23 = or i32 %20, %22
  %24 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %25 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.list_head*, %struct.list_head** %6, align 8
  %29 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %30 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @qla4xxx_check_existing_isid(%struct.list_head* %28, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %39

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %16

39:                                               ; preds = %34, %16
  %40 = load %struct.list_head*, %struct.list_head** %6, align 8
  %41 = load %struct.dev_db_entry*, %struct.dev_db_entry** %7, align 8
  %42 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @qla4xxx_check_existing_isid(%struct.list_head* %40, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @QLA_ERROR, align 4
  store i32 %47, i32* %4, align 4
  br label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @qla4xxx_check_existing_isid(%struct.list_head*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
