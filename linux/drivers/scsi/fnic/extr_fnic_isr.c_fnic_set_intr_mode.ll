; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_isr.c_fnic_set_intr_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_isr.c_fnic_set_intr_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@FNIC_MSIX_ERR_NOTIFY = common dso_local global i64 0, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Using MSI-X Interrupts\0A\00", align 1
@VNIC_DEV_INTR_MODE_MSIX = common dso_local global i32 0, align 4
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Using MSI Interrupts\0A\00", align 1
@VNIC_DEV_INTR_MODE_MSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Using Legacy Interrupts\0A\00", align 1
@VNIC_DEV_INTR_MODE_INTX = common dso_local global i32 0, align 4
@VNIC_DEV_INTR_MODE_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_set_intr_mode(%struct.fnic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fnic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fnic* %0, %struct.fnic** %3, align 8
  %8 = load %struct.fnic*, %struct.fnic** %3, align 8
  %9 = getelementptr inbounds %struct.fnic, %struct.fnic* %8, i32 0, i32 12
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.fnic*, %struct.fnic** %3, align 8
  %13 = getelementptr inbounds %struct.fnic, %struct.fnic* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.fnic*, %struct.fnic** %3, align 8
  %17 = getelementptr inbounds %struct.fnic, %struct.fnic* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.fnic*, %struct.fnic** %3, align 8
  %21 = getelementptr inbounds %struct.fnic, %struct.fnic* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %104

25:                                               ; preds = %1
  %26 = load %struct.fnic*, %struct.fnic** %3, align 8
  %27 = getelementptr inbounds %struct.fnic, %struct.fnic* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %31, label %104

31:                                               ; preds = %25
  %32 = load %struct.fnic*, %struct.fnic** %3, align 8
  %33 = getelementptr inbounds %struct.fnic, %struct.fnic* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %104

37:                                               ; preds = %31
  %38 = load %struct.fnic*, %struct.fnic** %3, align 8
  %39 = getelementptr inbounds %struct.fnic, %struct.fnic* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %43, %44
  %46 = icmp uge i32 %40, %45
  br i1 %46, label %47, label %104

47:                                               ; preds = %37
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %50, %51
  %53 = add i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = load %struct.fnic*, %struct.fnic** %3, align 8
  %55 = getelementptr inbounds %struct.fnic, %struct.fnic* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %60 = call i32 @pci_alloc_irq_vectors(i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %103

63:                                               ; preds = %47
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.fnic*, %struct.fnic** %3, align 8
  %66 = getelementptr inbounds %struct.fnic, %struct.fnic* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.fnic*, %struct.fnic** %3, align 8
  %69 = getelementptr inbounds %struct.fnic, %struct.fnic* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.fnic*, %struct.fnic** %3, align 8
  %72 = getelementptr inbounds %struct.fnic, %struct.fnic* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add i32 %73, %74
  %76 = load %struct.fnic*, %struct.fnic** %3, align 8
  %77 = getelementptr inbounds %struct.fnic, %struct.fnic* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %5, align 4
  %80 = add i32 %78, %79
  %81 = load i32, i32* %6, align 4
  %82 = add i32 %80, %81
  %83 = load %struct.fnic*, %struct.fnic** %3, align 8
  %84 = getelementptr inbounds %struct.fnic, %struct.fnic* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.fnic*, %struct.fnic** %3, align 8
  %87 = getelementptr inbounds %struct.fnic, %struct.fnic* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load i64, i64* @FNIC_MSIX_ERR_NOTIFY, align 8
  %89 = load %struct.fnic*, %struct.fnic** %3, align 8
  %90 = getelementptr inbounds %struct.fnic, %struct.fnic* %89, i32 0, i32 8
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* @KERN_DEBUG, align 4
  %92 = load %struct.fnic*, %struct.fnic** %3, align 8
  %93 = getelementptr inbounds %struct.fnic, %struct.fnic* %92, i32 0, i32 7
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @FNIC_ISR_DBG(i32 %91, i32 %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %98 = load %struct.fnic*, %struct.fnic** %3, align 8
  %99 = getelementptr inbounds %struct.fnic, %struct.fnic* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @VNIC_DEV_INTR_MODE_MSIX, align 4
  %102 = call i32 @vnic_dev_set_intr_mode(i32 %100, i32 %101)
  store i32 0, i32* %2, align 4
  br label %219

103:                                              ; preds = %47
  br label %104

104:                                              ; preds = %103, %37, %31, %25, %1
  %105 = load %struct.fnic*, %struct.fnic** %3, align 8
  %106 = getelementptr inbounds %struct.fnic, %struct.fnic* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp uge i32 %107, 1
  br i1 %108, label %109, label %163

109:                                              ; preds = %104
  %110 = load %struct.fnic*, %struct.fnic** %3, align 8
  %111 = getelementptr inbounds %struct.fnic, %struct.fnic* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp uge i32 %112, 1
  br i1 %113, label %114, label %163

114:                                              ; preds = %109
  %115 = load %struct.fnic*, %struct.fnic** %3, align 8
  %116 = getelementptr inbounds %struct.fnic, %struct.fnic* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp uge i32 %117, 1
  br i1 %118, label %119, label %163

119:                                              ; preds = %114
  %120 = load %struct.fnic*, %struct.fnic** %3, align 8
  %121 = getelementptr inbounds %struct.fnic, %struct.fnic* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp uge i32 %122, 3
  br i1 %123, label %124, label %163

124:                                              ; preds = %119
  %125 = load %struct.fnic*, %struct.fnic** %3, align 8
  %126 = getelementptr inbounds %struct.fnic, %struct.fnic* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = icmp sge i32 %127, 1
  br i1 %128, label %129, label %163

129:                                              ; preds = %124
  %130 = load %struct.fnic*, %struct.fnic** %3, align 8
  %131 = getelementptr inbounds %struct.fnic, %struct.fnic* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @PCI_IRQ_MSI, align 4
  %134 = call i32 @pci_alloc_irq_vectors(i32 %132, i32 1, i32 1, i32 %133)
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %163

136:                                              ; preds = %129
  %137 = load %struct.fnic*, %struct.fnic** %3, align 8
  %138 = getelementptr inbounds %struct.fnic, %struct.fnic* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  %139 = load %struct.fnic*, %struct.fnic** %3, align 8
  %140 = getelementptr inbounds %struct.fnic, %struct.fnic* %139, i32 0, i32 1
  store i32 1, i32* %140, align 4
  %141 = load %struct.fnic*, %struct.fnic** %3, align 8
  %142 = getelementptr inbounds %struct.fnic, %struct.fnic* %141, i32 0, i32 2
  store i32 1, i32* %142, align 8
  %143 = load %struct.fnic*, %struct.fnic** %3, align 8
  %144 = getelementptr inbounds %struct.fnic, %struct.fnic* %143, i32 0, i32 4
  store i32 2, i32* %144, align 8
  %145 = load %struct.fnic*, %struct.fnic** %3, align 8
  %146 = getelementptr inbounds %struct.fnic, %struct.fnic* %145, i32 0, i32 3
  store i32 3, i32* %146, align 4
  %147 = load %struct.fnic*, %struct.fnic** %3, align 8
  %148 = getelementptr inbounds %struct.fnic, %struct.fnic* %147, i32 0, i32 5
  store i32 1, i32* %148, align 4
  %149 = load %struct.fnic*, %struct.fnic** %3, align 8
  %150 = getelementptr inbounds %struct.fnic, %struct.fnic* %149, i32 0, i32 8
  store i64 0, i64* %150, align 8
  %151 = load i32, i32* @KERN_DEBUG, align 4
  %152 = load %struct.fnic*, %struct.fnic** %3, align 8
  %153 = getelementptr inbounds %struct.fnic, %struct.fnic* %152, i32 0, i32 7
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @FNIC_ISR_DBG(i32 %151, i32 %156, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %158 = load %struct.fnic*, %struct.fnic** %3, align 8
  %159 = getelementptr inbounds %struct.fnic, %struct.fnic* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @VNIC_DEV_INTR_MODE_MSI, align 4
  %162 = call i32 @vnic_dev_set_intr_mode(i32 %160, i32 %161)
  store i32 0, i32* %2, align 4
  br label %219

163:                                              ; preds = %129, %124, %119, %114, %109, %104
  %164 = load %struct.fnic*, %struct.fnic** %3, align 8
  %165 = getelementptr inbounds %struct.fnic, %struct.fnic* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp uge i32 %166, 1
  br i1 %167, label %168, label %211

168:                                              ; preds = %163
  %169 = load %struct.fnic*, %struct.fnic** %3, align 8
  %170 = getelementptr inbounds %struct.fnic, %struct.fnic* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp uge i32 %171, 1
  br i1 %172, label %173, label %211

173:                                              ; preds = %168
  %174 = load %struct.fnic*, %struct.fnic** %3, align 8
  %175 = getelementptr inbounds %struct.fnic, %struct.fnic* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp uge i32 %176, 1
  br i1 %177, label %178, label %211

178:                                              ; preds = %173
  %179 = load %struct.fnic*, %struct.fnic** %3, align 8
  %180 = getelementptr inbounds %struct.fnic, %struct.fnic* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = icmp uge i32 %181, 3
  br i1 %182, label %183, label %211

183:                                              ; preds = %178
  %184 = load %struct.fnic*, %struct.fnic** %3, align 8
  %185 = getelementptr inbounds %struct.fnic, %struct.fnic* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = icmp sge i32 %186, 3
  br i1 %187, label %188, label %211

188:                                              ; preds = %183
  %189 = load %struct.fnic*, %struct.fnic** %3, align 8
  %190 = getelementptr inbounds %struct.fnic, %struct.fnic* %189, i32 0, i32 0
  store i32 1, i32* %190, align 8
  %191 = load %struct.fnic*, %struct.fnic** %3, align 8
  %192 = getelementptr inbounds %struct.fnic, %struct.fnic* %191, i32 0, i32 1
  store i32 1, i32* %192, align 4
  %193 = load %struct.fnic*, %struct.fnic** %3, align 8
  %194 = getelementptr inbounds %struct.fnic, %struct.fnic* %193, i32 0, i32 2
  store i32 1, i32* %194, align 8
  %195 = load %struct.fnic*, %struct.fnic** %3, align 8
  %196 = getelementptr inbounds %struct.fnic, %struct.fnic* %195, i32 0, i32 3
  store i32 3, i32* %196, align 4
  %197 = load %struct.fnic*, %struct.fnic** %3, align 8
  %198 = getelementptr inbounds %struct.fnic, %struct.fnic* %197, i32 0, i32 5
  store i32 3, i32* %198, align 4
  %199 = load i32, i32* @KERN_DEBUG, align 4
  %200 = load %struct.fnic*, %struct.fnic** %3, align 8
  %201 = getelementptr inbounds %struct.fnic, %struct.fnic* %200, i32 0, i32 7
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @FNIC_ISR_DBG(i32 %199, i32 %204, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %206 = load %struct.fnic*, %struct.fnic** %3, align 8
  %207 = getelementptr inbounds %struct.fnic, %struct.fnic* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @VNIC_DEV_INTR_MODE_INTX, align 4
  %210 = call i32 @vnic_dev_set_intr_mode(i32 %208, i32 %209)
  store i32 0, i32* %2, align 4
  br label %219

211:                                              ; preds = %183, %178, %173, %168, %163
  %212 = load %struct.fnic*, %struct.fnic** %3, align 8
  %213 = getelementptr inbounds %struct.fnic, %struct.fnic* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @VNIC_DEV_INTR_MODE_UNKNOWN, align 4
  %216 = call i32 @vnic_dev_set_intr_mode(i32 %214, i32 %215)
  %217 = load i32, i32* @EINVAL, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %211, %188, %136, %63
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pci_alloc_irq_vectors(i32, i32, i32, i32) #1

declare dso_local i32 @FNIC_ISR_DBG(i32, i32, i8*) #1

declare dso_local i32 @vnic_dev_set_intr_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
