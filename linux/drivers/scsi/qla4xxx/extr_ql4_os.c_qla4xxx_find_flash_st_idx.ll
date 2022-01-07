; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_find_flash_st_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_find_flash_st_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.dev_db_entry = type { i32 }

@QLA_ERROR = common dso_local global i32 0, align 4
@MAX_DEV_DB_ENTRIES_40XX = common dso_local global i32 0, align 4
@MAX_DEV_DB_ENTRIES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to find ST [%d] in flash\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.dev_db_entry*, i32, i32*)* @qla4xxx_find_flash_st_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_find_flash_st_idx(%struct.scsi_qla_host* %0, %struct.dev_db_entry* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.dev_db_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dev_db_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store %struct.dev_db_entry* %1, %struct.dev_db_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @QLA_ERROR, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %17 = call i64 @is_qla40XX(%struct.scsi_qla_host* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @MAX_DEV_DB_ENTRIES_40XX, align 4
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @MAX_DEV_DB_ENTRIES, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %12, align 4
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %26 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.dev_db_entry* @dma_pool_alloc(i32 %27, i32 %28, i32* %10)
  store %struct.dev_db_entry* %29, %struct.dev_db_entry** %9, align 8
  %30 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %31 = icmp eq %struct.dev_db_entry* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %34 = icmp eq %struct.dev_db_entry* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32, %23
  %36 = load i32, i32* @KERN_ERR, align 4
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %38 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %36, %struct.scsi_qla_host* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %100

39:                                               ; preds = %32
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %41 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @qla4xxx_flashdb_by_index(%struct.scsi_qla_host* %40, %struct.dev_db_entry* %41, i32 %42, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @QLA_SUCCESS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %39
  %49 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %50 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %51 = call i32 @qla4xxx_cmp_fw_stentry(%struct.dev_db_entry* %49, %struct.dev_db_entry* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @QLA_SUCCESS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %58, i32* %13, align 4
  br label %100

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %39
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %87, %60
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %61
  %66 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %67 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @qla4xxx_flashdb_by_index(%struct.scsi_qla_host* %66, %struct.dev_db_entry* %67, i32 %68, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @QLA_ERROR, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %87

75:                                               ; preds = %65
  %76 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %77 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %78 = call i32 @qla4xxx_cmp_fw_stentry(%struct.dev_db_entry* %76, %struct.dev_db_entry* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @QLA_SUCCESS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i32, i32* %11, align 4
  %84 = load i32*, i32** %8, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %85, i32* %13, align 4
  br label %100

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %74
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %61

90:                                               ; preds = %61
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i32, i32* @KERN_ERR, align 4
  %96 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %95, %struct.scsi_qla_host* %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %94, %90
  br label %100

100:                                              ; preds = %99, %82, %55, %35
  %101 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %102 = icmp ne %struct.dev_db_entry* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %105 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dev_db_entry*, %struct.dev_db_entry** %9, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @dma_pool_free(i32 %106, %struct.dev_db_entry* %107, i32 %108)
  br label %110

110:                                              ; preds = %103, %100
  %111 = load i32, i32* %13, align 4
  ret i32 %111
}

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local %struct.dev_db_entry* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, ...) #1

declare dso_local i32 @qla4xxx_flashdb_by_index(%struct.scsi_qla_host*, %struct.dev_db_entry*, i32, i32) #1

declare dso_local i32 @qla4xxx_cmp_fw_stentry(%struct.dev_db_entry*, %struct.dev_db_entry*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.dev_db_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
