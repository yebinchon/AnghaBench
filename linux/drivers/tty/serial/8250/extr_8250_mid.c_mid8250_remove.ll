; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mid.c_mid8250_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mid.c_mid8250_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mid8250 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mid8250*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @mid8250_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mid8250_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.mid8250*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.mid8250* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.mid8250* %5, %struct.mid8250** %3, align 8
  %6 = load %struct.mid8250*, %struct.mid8250** %3, align 8
  %7 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @serial8250_unregister_port(i32 %8)
  %10 = load %struct.mid8250*, %struct.mid8250** %3, align 8
  %11 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.mid8250*)*, i32 (%struct.mid8250*)** %13, align 8
  %15 = icmp ne i32 (%struct.mid8250*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.mid8250*, %struct.mid8250** %3, align 8
  %18 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.mid8250*)*, i32 (%struct.mid8250*)** %20, align 8
  %22 = load %struct.mid8250*, %struct.mid8250** %3, align 8
  %23 = call i32 %21(%struct.mid8250* %22)
  br label %24

24:                                               ; preds = %16, %1
  ret void
}

declare dso_local %struct.mid8250* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @serial8250_unregister_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
