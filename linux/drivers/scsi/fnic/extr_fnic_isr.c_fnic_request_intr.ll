; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_isr.c_fnic_request_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_isr.c_fnic_request_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i8*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i8*, i32, %struct.fnic*, i32* }
%struct.TYPE_3__ = type { i32 }

@fnic_isr_legacy = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i8* null, align 8
@fnic_isr_msi = common dso_local global i32 0, align 4
@FNIC_MSIX_RQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"%.11s-fcs-rq\00", align 1
@fnic_isr_msix_rq = common dso_local global i32* null, align 8
@FNIC_MSIX_WQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"%.11s-fcs-wq\00", align 1
@fnic_isr_msix_wq = common dso_local global i32* null, align 8
@FNIC_MSIX_WQ_COPY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"%.11s-scsi-wq\00", align 1
@fnic_isr_msix_wq_copy = common dso_local global i32* null, align 8
@FNIC_MSIX_ERR_NOTIFY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"%.11s-err-notify\00", align 1
@fnic_isr_msix_err_notify = common dso_local global i32* null, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"MSIX: request_irq failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_request_intr(%struct.fnic* %0) #0 {
  %2 = alloca %struct.fnic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fnic* %0, %struct.fnic** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.fnic*, %struct.fnic** %2, align 8
  %6 = getelementptr inbounds %struct.fnic, %struct.fnic* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @vnic_dev_get_intr_mode(i32 %7)
  switch i32 %8, label %192 [
    i32 130, label %9
    i32 129, label %18
    i32 128, label %28
  ]

9:                                                ; preds = %1
  %10 = load %struct.fnic*, %struct.fnic** %2, align 8
  %11 = getelementptr inbounds %struct.fnic, %struct.fnic* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pci_irq_vector(i32 %12, i32 0)
  %14 = load i32, i32* @IRQF_SHARED, align 4
  %15 = load i8*, i8** @DRV_NAME, align 8
  %16 = load %struct.fnic*, %struct.fnic** %2, align 8
  %17 = call i32 @request_irq(i32 %13, i32* @fnic_isr_legacy, i32 %14, i8* %15, %struct.fnic* %16)
  store i32 %17, i32* %3, align 4
  br label %193

18:                                               ; preds = %1
  %19 = load %struct.fnic*, %struct.fnic** %2, align 8
  %20 = getelementptr inbounds %struct.fnic, %struct.fnic* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pci_irq_vector(i32 %21, i32 0)
  %23 = load %struct.fnic*, %struct.fnic** %2, align 8
  %24 = getelementptr inbounds %struct.fnic, %struct.fnic* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.fnic*, %struct.fnic** %2, align 8
  %27 = call i32 @request_irq(i32 %22, i32* @fnic_isr_msi, i32 0, i8* %25, %struct.fnic* %26)
  store i32 %27, i32* %3, align 4
  br label %193

28:                                               ; preds = %1
  %29 = load %struct.fnic*, %struct.fnic** %2, align 8
  %30 = getelementptr inbounds %struct.fnic, %struct.fnic* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* @FNIC_MSIX_RQ, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.fnic*, %struct.fnic** %2, align 8
  %37 = getelementptr inbounds %struct.fnic, %struct.fnic* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i32*, i32** @fnic_isr_msix_rq, align 8
  %41 = load %struct.fnic*, %struct.fnic** %2, align 8
  %42 = getelementptr inbounds %struct.fnic, %struct.fnic* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* @FNIC_MSIX_RQ, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store i32* %40, i32** %46, align 8
  %47 = load %struct.fnic*, %struct.fnic** %2, align 8
  %48 = load %struct.fnic*, %struct.fnic** %2, align 8
  %49 = getelementptr inbounds %struct.fnic, %struct.fnic* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i64, i64* @FNIC_MSIX_RQ, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store %struct.fnic* %47, %struct.fnic** %53, align 8
  %54 = load %struct.fnic*, %struct.fnic** %2, align 8
  %55 = getelementptr inbounds %struct.fnic, %struct.fnic* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i64, i64* @FNIC_MSIX_WQ, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.fnic*, %struct.fnic** %2, align 8
  %62 = getelementptr inbounds %struct.fnic, %struct.fnic* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  %65 = load i32*, i32** @fnic_isr_msix_wq, align 8
  %66 = load %struct.fnic*, %struct.fnic** %2, align 8
  %67 = getelementptr inbounds %struct.fnic, %struct.fnic* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i64, i64* @FNIC_MSIX_WQ, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  store i32* %65, i32** %71, align 8
  %72 = load %struct.fnic*, %struct.fnic** %2, align 8
  %73 = load %struct.fnic*, %struct.fnic** %2, align 8
  %74 = getelementptr inbounds %struct.fnic, %struct.fnic* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i64, i64* @FNIC_MSIX_WQ, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store %struct.fnic* %72, %struct.fnic** %78, align 8
  %79 = load %struct.fnic*, %struct.fnic** %2, align 8
  %80 = getelementptr inbounds %struct.fnic, %struct.fnic* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i64, i64* @FNIC_MSIX_WQ_COPY, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.fnic*, %struct.fnic** %2, align 8
  %87 = getelementptr inbounds %struct.fnic, %struct.fnic* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @sprintf(i8* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %88)
  %90 = load i32*, i32** @fnic_isr_msix_wq_copy, align 8
  %91 = load %struct.fnic*, %struct.fnic** %2, align 8
  %92 = getelementptr inbounds %struct.fnic, %struct.fnic* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i64, i64* @FNIC_MSIX_WQ_COPY, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i32* %90, i32** %96, align 8
  %97 = load %struct.fnic*, %struct.fnic** %2, align 8
  %98 = load %struct.fnic*, %struct.fnic** %2, align 8
  %99 = getelementptr inbounds %struct.fnic, %struct.fnic* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i64, i64* @FNIC_MSIX_WQ_COPY, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  store %struct.fnic* %97, %struct.fnic** %103, align 8
  %104 = load %struct.fnic*, %struct.fnic** %2, align 8
  %105 = getelementptr inbounds %struct.fnic, %struct.fnic* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i64, i64* @FNIC_MSIX_ERR_NOTIFY, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.fnic*, %struct.fnic** %2, align 8
  %112 = getelementptr inbounds %struct.fnic, %struct.fnic* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @sprintf(i8* %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %113)
  %115 = load i32*, i32** @fnic_isr_msix_err_notify, align 8
  %116 = load %struct.fnic*, %struct.fnic** %2, align 8
  %117 = getelementptr inbounds %struct.fnic, %struct.fnic* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i64, i64* @FNIC_MSIX_ERR_NOTIFY, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  store i32* %115, i32** %121, align 8
  %122 = load %struct.fnic*, %struct.fnic** %2, align 8
  %123 = load %struct.fnic*, %struct.fnic** %2, align 8
  %124 = getelementptr inbounds %struct.fnic, %struct.fnic* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i64, i64* @FNIC_MSIX_ERR_NOTIFY, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  store %struct.fnic* %122, %struct.fnic** %128, align 8
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %188, %28
  %130 = load i32, i32* %4, align 4
  %131 = load %struct.fnic*, %struct.fnic** %2, align 8
  %132 = getelementptr inbounds %struct.fnic, %struct.fnic* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %133)
  %135 = icmp slt i32 %130, %134
  br i1 %135, label %136, label %191

136:                                              ; preds = %129
  %137 = load %struct.fnic*, %struct.fnic** %2, align 8
  %138 = getelementptr inbounds %struct.fnic, %struct.fnic* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @pci_irq_vector(i32 %139, i32 %140)
  %142 = load %struct.fnic*, %struct.fnic** %2, align 8
  %143 = getelementptr inbounds %struct.fnic, %struct.fnic* %142, i32 0, i32 1
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.fnic*, %struct.fnic** %2, align 8
  %151 = getelementptr inbounds %struct.fnic, %struct.fnic* %150, i32 0, i32 1
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.fnic*, %struct.fnic** %2, align 8
  %159 = getelementptr inbounds %struct.fnic, %struct.fnic* %158, i32 0, i32 1
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  %165 = load %struct.fnic*, %struct.fnic** %164, align 8
  %166 = call i32 @request_irq(i32 %141, i32* %149, i32 0, i8* %157, %struct.fnic* %165)
  store i32 %166, i32* %3, align 4
  %167 = load i32, i32* %3, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %136
  %170 = load i32, i32* @KERN_ERR, align 4
  %171 = load %struct.fnic*, %struct.fnic** %2, align 8
  %172 = getelementptr inbounds %struct.fnic, %struct.fnic* %171, i32 0, i32 2
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %3, align 4
  %177 = call i32 @shost_printk(i32 %170, i32 %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %176)
  %178 = load %struct.fnic*, %struct.fnic** %2, align 8
  %179 = call i32 @fnic_free_intr(%struct.fnic* %178)
  br label %191

180:                                              ; preds = %136
  %181 = load %struct.fnic*, %struct.fnic** %2, align 8
  %182 = getelementptr inbounds %struct.fnic, %struct.fnic* %181, i32 0, i32 1
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  store i32 1, i32* %187, align 8
  br label %188

188:                                              ; preds = %180
  %189 = load i32, i32* %4, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %4, align 4
  br label %129

191:                                              ; preds = %169, %129
  br label %193

192:                                              ; preds = %1
  br label %193

193:                                              ; preds = %192, %191, %18, %9
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i8*, %struct.fnic*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @shost_printk(i32, i32, i8*, i32) #1

declare dso_local i32 @fnic_free_intr(%struct.fnic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
