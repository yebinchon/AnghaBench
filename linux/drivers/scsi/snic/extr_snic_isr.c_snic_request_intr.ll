; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_isr.c_snic_request_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_isr.c_snic_request_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i8*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.snic*, i32, i32 }

@VNIC_DEV_INTR_MODE_MSIX = common dso_local global i32 0, align 4
@SNIC_MSIX_WQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"%.11s-scsi-wq\00", align 1
@snic_isr_msix_wq = common dso_local global i32 0, align 4
@SNIC_MSIX_IO_CMPL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"%.11s-io-cmpl\00", align 1
@snic_isr_msix_io_cmpl = common dso_local global i32 0, align 4
@SNIC_MSIX_ERR_NOTIFY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"%.11s-err-notify\00", align 1
@snic_isr_msix_err_notify = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"MSI-X: request_irq(%d) failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snic_request_intr(%struct.snic* %0) #0 {
  %2 = alloca %struct.snic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snic* %0, %struct.snic** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.snic*, %struct.snic** %2, align 8
  %7 = getelementptr inbounds %struct.snic, %struct.snic* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @svnic_dev_get_intr_mode(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @VNIC_DEV_INTR_MODE_MSIX, align 4
  %12 = icmp ne i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @SNIC_BUG_ON(i32 %13)
  %15 = load %struct.snic*, %struct.snic** %2, align 8
  %16 = getelementptr inbounds %struct.snic, %struct.snic* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* @SNIC_MSIX_WQ, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.snic*, %struct.snic** %2, align 8
  %23 = getelementptr inbounds %struct.snic, %struct.snic* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @sprintf(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @snic_isr_msix_wq, align 4
  %27 = load %struct.snic*, %struct.snic** %2, align 8
  %28 = getelementptr inbounds %struct.snic, %struct.snic* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* @SNIC_MSIX_WQ, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  store i32 %26, i32* %32, align 4
  %33 = load %struct.snic*, %struct.snic** %2, align 8
  %34 = load %struct.snic*, %struct.snic** %2, align 8
  %35 = getelementptr inbounds %struct.snic, %struct.snic* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* @SNIC_MSIX_WQ, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store %struct.snic* %33, %struct.snic** %39, align 8
  %40 = load %struct.snic*, %struct.snic** %2, align 8
  %41 = getelementptr inbounds %struct.snic, %struct.snic* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* @SNIC_MSIX_IO_CMPL, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.snic*, %struct.snic** %2, align 8
  %48 = getelementptr inbounds %struct.snic, %struct.snic* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @sprintf(i32 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @snic_isr_msix_io_cmpl, align 4
  %52 = load %struct.snic*, %struct.snic** %2, align 8
  %53 = getelementptr inbounds %struct.snic, %struct.snic* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* @SNIC_MSIX_IO_CMPL, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  store i32 %51, i32* %57, align 4
  %58 = load %struct.snic*, %struct.snic** %2, align 8
  %59 = load %struct.snic*, %struct.snic** %2, align 8
  %60 = getelementptr inbounds %struct.snic, %struct.snic* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* @SNIC_MSIX_IO_CMPL, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store %struct.snic* %58, %struct.snic** %64, align 8
  %65 = load %struct.snic*, %struct.snic** %2, align 8
  %66 = getelementptr inbounds %struct.snic, %struct.snic* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* @SNIC_MSIX_ERR_NOTIFY, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.snic*, %struct.snic** %2, align 8
  %73 = getelementptr inbounds %struct.snic, %struct.snic* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @sprintf(i32 %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* @snic_isr_msix_err_notify, align 4
  %77 = load %struct.snic*, %struct.snic** %2, align 8
  %78 = getelementptr inbounds %struct.snic, %struct.snic* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i64, i64* @SNIC_MSIX_ERR_NOTIFY, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  store i32 %76, i32* %82, align 4
  %83 = load %struct.snic*, %struct.snic** %2, align 8
  %84 = load %struct.snic*, %struct.snic** %2, align 8
  %85 = getelementptr inbounds %struct.snic, %struct.snic* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i64, i64* @SNIC_MSIX_ERR_NOTIFY, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store %struct.snic* %83, %struct.snic** %89, align 8
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %147, %1
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.snic*, %struct.snic** %2, align 8
  %93 = getelementptr inbounds %struct.snic, %struct.snic* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %94)
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %150

97:                                               ; preds = %90
  %98 = load %struct.snic*, %struct.snic** %2, align 8
  %99 = getelementptr inbounds %struct.snic, %struct.snic* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @pci_irq_vector(i32 %100, i32 %101)
  %103 = load %struct.snic*, %struct.snic** %2, align 8
  %104 = getelementptr inbounds %struct.snic, %struct.snic* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.snic*, %struct.snic** %2, align 8
  %112 = getelementptr inbounds %struct.snic, %struct.snic* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.snic*, %struct.snic** %2, align 8
  %120 = getelementptr inbounds %struct.snic, %struct.snic* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load %struct.snic*, %struct.snic** %125, align 8
  %127 = call i32 @request_irq(i32 %102, i32 %110, i32 0, i32 %118, %struct.snic* %126)
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* %3, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %97
  %131 = load %struct.snic*, %struct.snic** %2, align 8
  %132 = getelementptr inbounds %struct.snic, %struct.snic* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @SNIC_HOST_ERR(i32 %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load %struct.snic*, %struct.snic** %2, align 8
  %138 = call i32 @snic_free_intr(%struct.snic* %137)
  br label %150

139:                                              ; preds = %97
  %140 = load %struct.snic*, %struct.snic** %2, align 8
  %141 = getelementptr inbounds %struct.snic, %struct.snic* %140, i32 0, i32 1
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  br label %147

147:                                              ; preds = %139
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  br label %90

150:                                              ; preds = %130, %90
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @svnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @SNIC_BUG_ON(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.snic*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @SNIC_HOST_ERR(i32, i8*, i32, i32) #1

declare dso_local i32 @snic_free_intr(%struct.snic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
