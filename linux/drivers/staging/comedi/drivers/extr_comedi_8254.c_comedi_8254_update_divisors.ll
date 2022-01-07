; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c_comedi_8254_update_divisors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c_comedi_8254_update_divisors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_8254 = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_8254_update_divisors(%struct.comedi_8254* %0) #0 {
  %2 = alloca %struct.comedi_8254*, align 8
  store %struct.comedi_8254* %0, %struct.comedi_8254** %2, align 8
  %3 = load %struct.comedi_8254*, %struct.comedi_8254** %2, align 8
  %4 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 65535
  %7 = load %struct.comedi_8254*, %struct.comedi_8254** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.comedi_8254*, %struct.comedi_8254** %2, align 8
  %10 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 65535
  %13 = load %struct.comedi_8254*, %struct.comedi_8254** %2, align 8
  %14 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.comedi_8254*, %struct.comedi_8254** %2, align 8
  %16 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 65535
  %19 = load %struct.comedi_8254*, %struct.comedi_8254** %2, align 8
  %20 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
