; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_update_qspi_trans_byte_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_update_qspi_trans_byte_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qspi_trans = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i64, i64 }

@TRANS_STATUS_BREAK_NONE = common dso_local global i32 0, align 4
@TRANS_STATUS_BREAK_DELAY = common dso_local global i32 0, align 4
@TRANS_STATUS_BREAK_CS_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"advance msg exit\0A\00", align 1
@TRANS_STATUS_BREAK_EOM = common dso_local global i32 0, align 4
@TRANS_STATUS_BREAK_NO_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"trans %p len %d byte %d ret %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_qspi*, %struct.qspi_trans*, i32)* @update_qspi_trans_byte_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_qspi_trans_byte_count(%struct.bcm_qspi* %0, %struct.qspi_trans* %1, i32 %2) #0 {
  %4 = alloca %struct.bcm_qspi*, align 8
  %5 = alloca %struct.qspi_trans*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bcm_qspi* %0, %struct.bcm_qspi** %4, align 8
  store %struct.qspi_trans* %1, %struct.qspi_trans** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @TRANS_STATUS_BREAK_NONE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.qspi_trans*, %struct.qspi_trans** %5, align 8
  %10 = getelementptr inbounds %struct.qspi_trans, %struct.qspi_trans* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %13, 8
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.qspi_trans*, %struct.qspi_trans** %5, align 8
  %17 = getelementptr inbounds %struct.qspi_trans, %struct.qspi_trans* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.qspi_trans*, %struct.qspi_trans** %5, align 8
  %22 = getelementptr inbounds %struct.qspi_trans, %struct.qspi_trans* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 2
  store i64 %24, i64* %22, align 8
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.qspi_trans*, %struct.qspi_trans** %5, align 8
  %27 = getelementptr inbounds %struct.qspi_trans, %struct.qspi_trans* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.qspi_trans*, %struct.qspi_trans** %5, align 8
  %30 = getelementptr inbounds %struct.qspi_trans, %struct.qspi_trans* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %28, %33
  br i1 %34, label %35, label %88

35:                                               ; preds = %25
  %36 = load %struct.qspi_trans*, %struct.qspi_trans** %5, align 8
  %37 = getelementptr inbounds %struct.qspi_trans, %struct.qspi_trans* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @TRANS_STATUS_BREAK_DELAY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @TRANS_STATUS_BREAK_DELAY, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %42, %35
  %52 = load %struct.qspi_trans*, %struct.qspi_trans** %5, align 8
  %53 = getelementptr inbounds %struct.qspi_trans, %struct.qspi_trans* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @TRANS_STATUS_BREAK_CS_CHANGE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @TRANS_STATUS_BREAK_CS_CHANGE, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %63, %58, %51
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %89

71:                                               ; preds = %67
  %72 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %73 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %78 = load %struct.qspi_trans*, %struct.qspi_trans** %5, align 8
  %79 = call i64 @bcm_qspi_mspi_transfer_is_last(%struct.bcm_qspi* %77, %struct.qspi_trans* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* @TRANS_STATUS_BREAK_EOM, align 4
  store i32 %82, i32* %7, align 4
  br label %85

83:                                               ; preds = %71
  %84 = load i32, i32* @TRANS_STATUS_BREAK_NO_BYTES, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = load %struct.qspi_trans*, %struct.qspi_trans** %5, align 8
  %87 = getelementptr inbounds %struct.qspi_trans, %struct.qspi_trans* %86, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %87, align 8
  br label %88

88:                                               ; preds = %85, %25
  br label %89

89:                                               ; preds = %88, %70
  %90 = load %struct.bcm_qspi*, %struct.bcm_qspi** %4, align 8
  %91 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load %struct.qspi_trans*, %struct.qspi_trans** %5, align 8
  %95 = getelementptr inbounds %struct.qspi_trans, %struct.qspi_trans* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load %struct.qspi_trans*, %struct.qspi_trans** %5, align 8
  %98 = getelementptr inbounds %struct.qspi_trans, %struct.qspi_trans* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = icmp ne %struct.TYPE_4__* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %89
  %102 = load %struct.qspi_trans*, %struct.qspi_trans** %5, align 8
  %103 = getelementptr inbounds %struct.qspi_trans, %struct.qspi_trans* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  br label %108

107:                                              ; preds = %89
  br label %108

108:                                              ; preds = %107, %101
  %109 = phi i64 [ %106, %101 ], [ 0, %107 ]
  %110 = load %struct.qspi_trans*, %struct.qspi_trans** %5, align 8
  %111 = getelementptr inbounds %struct.qspi_trans, %struct.qspi_trans* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %96, i64 %109, i64 %112, i32 %113)
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i64 @bcm_qspi_mspi_transfer_is_last(%struct.bcm_qspi*, %struct.qspi_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
