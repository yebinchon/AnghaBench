; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_nozomi_card_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_nozomi_card_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ctrl_ul = type { i32, i32, i64, i64 }
%struct.nozomi = type { i32, i32, %struct.nozomi*, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [28 x i8] c"sending flow control 0x%04X\00", align 1
@PORT_CTRL = common dso_local global i64 0, align 8
@CTRL_UL = common dso_local global i64 0, align 8
@MAX_PORT = common dso_local global i32 0, align 4
@ndevs = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @nozomi_card_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nozomi_card_exit(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctrl_ul, align 8
  %5 = alloca %struct.nozomi*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.nozomi* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.nozomi* %7, %struct.nozomi** %5, align 8
  %8 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %9 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %8, i32 0, i32 6
  store i64 0, i64* %9, align 8
  %10 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %11 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %14 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @writew(i64 %12, i32 %15)
  %17 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %18 = call i32 @tty_exit(%struct.nozomi* %17)
  %19 = getelementptr inbounds %struct.ctrl_ul, %struct.ctrl_ul* %4, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.ctrl_ul, %struct.ctrl_ul* %4, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.ctrl_ul, %struct.ctrl_ul* %4, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.ctrl_ul, %struct.ctrl_ul* %4, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = bitcast %struct.ctrl_ul* %4 to i32*
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @DBG1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %27 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* @PORT_CTRL, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = bitcast %struct.ctrl_ul* %4 to i32*
  %36 = call i32 @write_mem32(i32 %34, i32* %35, i32 2)
  %37 = load i64, i64* @CTRL_UL, align 8
  %38 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %39 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @writew(i64 %37, i32 %40)
  %42 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %43 = call i32 @remove_sysfs_files(%struct.nozomi* %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %48 = call i32 @free_irq(i32 %46, %struct.nozomi* %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %62, %1
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @MAX_PORT, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %55 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @kfifo_free(i32* %60)
  br label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %49

65:                                               ; preds = %49
  %66 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %67 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %66, i32 0, i32 2
  %68 = load %struct.nozomi*, %struct.nozomi** %67, align 8
  %69 = call i32 @kfree(%struct.nozomi* %68)
  %70 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %71 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @iounmap(i32 %72)
  %74 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %75 = call i32 @pci_release_regions(%struct.pci_dev* %74)
  %76 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %77 = call i32 @pci_disable_device(%struct.pci_dev* %76)
  %78 = load i32**, i32*** @ndevs, align 8
  %79 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %80 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MAX_PORT, align 4
  %83 = sdiv i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %78, i64 %84
  store i32* null, i32** %85, align 8
  %86 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %87 = call i32 @kfree(%struct.nozomi* %86)
  ret void
}

declare dso_local %struct.nozomi* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @writew(i64, i32) #1

declare dso_local i32 @tty_exit(%struct.nozomi*) #1

declare dso_local i32 @DBG1(i8*, i32) #1

declare dso_local i32 @write_mem32(i32, i32*, i32) #1

declare dso_local i32 @remove_sysfs_files(%struct.nozomi*) #1

declare dso_local i32 @free_irq(i32, %struct.nozomi*) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @kfree(%struct.nozomi*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
