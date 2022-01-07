; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_is_session_exists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_is_session_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.dev_db_entry = type { i32 }
%struct.ddb_entry = type { i32 }
%struct.ql4_tuple_ddb = type { i32 }

@QLA_ERROR = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Memory Allocation failed.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@MAX_DDB_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.dev_db_entry*, i32*)* @qla4xxx_is_session_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_is_session_exists(%struct.scsi_qla_host* %0, %struct.dev_db_entry* %1, i32* %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.dev_db_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ddb_entry*, align 8
  %8 = alloca %struct.ql4_tuple_ddb*, align 8
  %9 = alloca %struct.ql4_tuple_ddb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.dev_db_entry* %1, %struct.dev_db_entry** %5, align 8
  store i32* %2, i32** %6, align 8
  store %struct.ql4_tuple_ddb* null, %struct.ql4_tuple_ddb** %8, align 8
  store %struct.ql4_tuple_ddb* null, %struct.ql4_tuple_ddb** %9, align 8
  %12 = load i32, i32* @QLA_ERROR, align 4
  store i32 %12, i32* %11, align 4
  %13 = call %struct.ql4_tuple_ddb* @vzalloc(i32 4)
  store %struct.ql4_tuple_ddb* %13, %struct.ql4_tuple_ddb** %8, align 8
  %14 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %8, align 8
  %15 = icmp ne %struct.ql4_tuple_ddb* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @KERN_WARNING, align 4
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %19 = call i32 @ql4_printk(i32 %17, %struct.scsi_qla_host* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @DEBUG2(i32 %19)
  %21 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %21, i32* %11, align 4
  br label %69

22:                                               ; preds = %3
  %23 = call %struct.ql4_tuple_ddb* @vzalloc(i32 4)
  store %struct.ql4_tuple_ddb* %23, %struct.ql4_tuple_ddb** %9, align 8
  %24 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %9, align 8
  %25 = icmp ne %struct.ql4_tuple_ddb* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @KERN_WARNING, align 4
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %29 = call i32 @ql4_printk(i32 %27, %struct.scsi_qla_host* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @DEBUG2(i32 %29)
  %31 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %31, i32* %11, align 4
  br label %69

32:                                               ; preds = %22
  %33 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %34 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %8, align 8
  %35 = call i32 @qla4xxx_convert_param_ddb(%struct.dev_db_entry* %33, %struct.ql4_tuple_ddb* %34, i32* null)
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %65, %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @MAX_DDB_ENTRIES, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call %struct.ddb_entry* @qla4xxx_lookup_ddb_by_fw_index(%struct.scsi_qla_host* %41, i32 %42)
  store %struct.ddb_entry* %43, %struct.ddb_entry** %7, align 8
  %44 = load %struct.ddb_entry*, %struct.ddb_entry** %7, align 8
  %45 = icmp eq %struct.ddb_entry* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %65

47:                                               ; preds = %40
  %48 = load %struct.ddb_entry*, %struct.ddb_entry** %7, align 8
  %49 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %9, align 8
  %50 = call i32 @qla4xxx_get_param_ddb(%struct.ddb_entry* %48, %struct.ql4_tuple_ddb* %49)
  %51 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %52 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %8, align 8
  %53 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %9, align 8
  %54 = call i32 @qla4xxx_compare_tuple_ddb(%struct.scsi_qla_host* %51, %struct.ql4_tuple_ddb* %52, %struct.ql4_tuple_ddb* %53, i32 0)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %57, i32* %11, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %56
  br label %69

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %46
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %36

68:                                               ; preds = %36
  br label %69

69:                                               ; preds = %68, %63, %26, %16
  %70 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %8, align 8
  %71 = icmp ne %struct.ql4_tuple_ddb* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %8, align 8
  %74 = call i32 @vfree(%struct.ql4_tuple_ddb* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %9, align 8
  %77 = icmp ne %struct.ql4_tuple_ddb* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %9, align 8
  %80 = call i32 @vfree(%struct.ql4_tuple_ddb* %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %11, align 4
  ret i32 %82
}

declare dso_local %struct.ql4_tuple_ddb* @vzalloc(i32) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i32 @qla4xxx_convert_param_ddb(%struct.dev_db_entry*, %struct.ql4_tuple_ddb*, i32*) #1

declare dso_local %struct.ddb_entry* @qla4xxx_lookup_ddb_by_fw_index(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @qla4xxx_get_param_ddb(%struct.ddb_entry*, %struct.ql4_tuple_ddb*) #1

declare dso_local i32 @qla4xxx_compare_tuple_ddb(%struct.scsi_qla_host*, %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb*, i32) #1

declare dso_local i32 @vfree(%struct.ql4_tuple_ddb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
