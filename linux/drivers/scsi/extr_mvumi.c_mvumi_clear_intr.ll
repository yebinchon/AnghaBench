; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_clear_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_clear_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32, i32, %struct.mvumi_hw_regs*, %struct.TYPE_2__* }
%struct.mvumi_hw_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@PCI_DEVICE_ID_MARVELL_MV9580 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mvumi_clear_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_clear_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mvumi_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvumi_hw_regs*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.mvumi_hba*
  store %struct.mvumi_hba* %10, %struct.mvumi_hba** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %12 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %11, i32 0, i32 2
  %13 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %12, align 8
  store %struct.mvumi_hw_regs* %13, %struct.mvumi_hw_regs** %8, align 8
  %14 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %15 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ioread32(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %20 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %1
  store i32 1, i32* %2, align 4
  br label %157

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %31 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %29, %32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %100

36:                                               ; preds = %28
  %37 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %38 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ioread32(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %42 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PCI_DEVICE_ID_MARVELL_MV9580, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %36
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %51 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %58 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %56, %59
  %61 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %62 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @iowrite32(i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %55, %48
  br label %92

66:                                               ; preds = %36
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %69 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %72 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %70, %73
  %75 = and i32 %67, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %66
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %80 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %83 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %81, %84
  %86 = and i32 %78, %85
  %87 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %88 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @iowrite32(i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %77, %66
  br label %92

92:                                               ; preds = %91, %65
  %93 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %94 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %93, i32 0, i32 2
  %95 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %94, align 8
  %96 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %5, align 4
  %99 = xor i32 %98, %97
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %92, %28
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %103 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %101, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %100
  %108 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %109 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ioread32(i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %114 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %107
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %121 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %119, %122
  %124 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %125 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @iowrite32(i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %118, %107
  br label %129

129:                                              ; preds = %128, %100
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %132 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %130, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %129
  %137 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %138 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ioread32(i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %8, align 8
  %146 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @iowrite32(i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %143, %136
  br label %150

150:                                              ; preds = %149, %129
  %151 = load i32, i32* %5, align 4
  %152 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %153 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %156 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %150, %27
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
