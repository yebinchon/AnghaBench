; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_update_idc_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_update_idc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}*, {}* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@AF_INIT_DONE = common dso_local global i32 0, align 4
@QLA8XXX_CRB_DRV_ACTIVE = common dso_local global i32 0, align 4
@ql4xdontresethba = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4_8xxx_update_idc_reg(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %5 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @AF_INIT_DONE, align 4
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %7, i32 0, i32 2
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %82

12:                                               ; preds = %1
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = bitcast {}** %16 to i32 (%struct.scsi_qla_host*)**
  %18 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %17, align 8
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %20 = call i32 %18(%struct.scsi_qla_host* %19)
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %22 = call i32 @qla4_8xxx_set_drv_active(%struct.scsi_qla_host* %21)
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %24 = call i64 @is_qla8032(%struct.scsi_qla_host* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %12
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %28 = call i64 @is_qla8042(%struct.scsi_qla_host* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %26, %12
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %32 = load i32, i32* @QLA8XXX_CRB_DRV_ACTIVE, align 4
  %33 = call i32 @qla4_8xxx_rd_direct(%struct.scsi_qla_host* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %36 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 1, %37
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load i32, i32* @ql4xdontresethba, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %45 = call i32 @qla4_83xx_clear_idc_dontreset(%struct.scsi_qla_host* %44)
  br label %46

46:                                               ; preds = %43, %40, %30
  br label %47

47:                                               ; preds = %46, %26
  %48 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %49 = call i64 @is_qla8022(%struct.scsi_qla_host* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %53 = call i32 @qla4_82xx_set_idc_ver(%struct.scsi_qla_host* %52)
  br label %73

54:                                               ; preds = %47
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %56 = call i64 @is_qla8032(%struct.scsi_qla_host* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %60 = call i64 @is_qla8042(%struct.scsi_qla_host* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %58, %54
  %63 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %64 = call i32 @qla4_83xx_set_idc_ver(%struct.scsi_qla_host* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @QLA_ERROR, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %70 = call i32 @qla4_8xxx_clear_drv_active(%struct.scsi_qla_host* %69)
  br label %71

71:                                               ; preds = %68, %62
  br label %72

72:                                               ; preds = %71, %58
  br label %73

73:                                               ; preds = %72, %51
  %74 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %75 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = bitcast {}** %77 to i32 (%struct.scsi_qla_host*)**
  %79 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %78, align 8
  %80 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %81 = call i32 %79(%struct.scsi_qla_host* %80)
  br label %82

82:                                               ; preds = %73, %11
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @qla4_8xxx_set_drv_active(%struct.scsi_qla_host*) #1

declare dso_local i64 @is_qla8032(%struct.scsi_qla_host*) #1

declare dso_local i64 @is_qla8042(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_8xxx_rd_direct(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @qla4_83xx_clear_idc_dontreset(%struct.scsi_qla_host*) #1

declare dso_local i64 @is_qla8022(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_82xx_set_idc_ver(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_83xx_set_idc_ver(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_8xxx_clear_drv_active(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
