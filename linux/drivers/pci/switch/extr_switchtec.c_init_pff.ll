; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_init_pff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_init_pff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchtec_dev = type { i32, i32*, %struct.TYPE_2__*, %struct.part_cfg_regs* }
%struct.TYPE_2__ = type { i32 }
%struct.part_cfg_regs = type { i32*, i32, i32 }

@SWITCHTEC_MAX_PFF_CSR = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_MICROSEMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switchtec_dev*)* @init_pff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pff(%struct.switchtec_dev* %0) #0 {
  %2 = alloca %struct.switchtec_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.part_cfg_regs*, align 8
  store %struct.switchtec_dev* %0, %struct.switchtec_dev** %2, align 8
  %6 = load %struct.switchtec_dev*, %struct.switchtec_dev** %2, align 8
  %7 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %6, i32 0, i32 3
  %8 = load %struct.part_cfg_regs*, %struct.part_cfg_regs** %7, align 8
  store %struct.part_cfg_regs* %8, %struct.part_cfg_regs** %5, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SWITCHTEC_MAX_PFF_CSR, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.switchtec_dev*, %struct.switchtec_dev** %2, align 8
  %15 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @ioread16(i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PCI_VENDOR_ID_MICROSEMI, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %30

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %9

30:                                               ; preds = %25, %9
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.switchtec_dev*, %struct.switchtec_dev** %2, align 8
  %33 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.part_cfg_regs*, %struct.part_cfg_regs** %5, align 8
  %35 = getelementptr inbounds %struct.part_cfg_regs, %struct.part_cfg_regs* %34, i32 0, i32 2
  %36 = call i32 @ioread32(i32* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @SWITCHTEC_MAX_PFF_CSR, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load %struct.switchtec_dev*, %struct.switchtec_dev** %2, align 8
  %42 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %40, %30
  %48 = load %struct.part_cfg_regs*, %struct.part_cfg_regs** %5, align 8
  %49 = getelementptr inbounds %struct.part_cfg_regs, %struct.part_cfg_regs* %48, i32 0, i32 1
  %50 = call i32 @ioread32(i32* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @SWITCHTEC_MAX_PFF_CSR, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.switchtec_dev*, %struct.switchtec_dev** %2, align 8
  %56 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %47
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %88, %61
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.part_cfg_regs*, %struct.part_cfg_regs** %5, align 8
  %65 = getelementptr inbounds %struct.part_cfg_regs, %struct.part_cfg_regs* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @ARRAY_SIZE(i32* %66)
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %62
  %70 = load %struct.part_cfg_regs*, %struct.part_cfg_regs** %5, align 8
  %71 = getelementptr inbounds %struct.part_cfg_regs, %struct.part_cfg_regs* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i32 @ioread32(i32* %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @SWITCHTEC_MAX_PFF_CSR, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %69
  %81 = load %struct.switchtec_dev*, %struct.switchtec_dev** %2, align 8
  %82 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %69
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %62

91:                                               ; preds = %62
  ret void
}

declare dso_local i32 @ioread16(i32*) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
