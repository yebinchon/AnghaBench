; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_ep.c_chain_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_ep.c_chain_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd_table = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@MARK_CHAIN_BD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bd_table*, %struct.bd_table*, i32)* @chain_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chain_table(%struct.bd_table* %0, %struct.bd_table* %1, i32 %2) #0 {
  %4 = alloca %struct.bd_table*, align 8
  %5 = alloca %struct.bd_table*, align 8
  %6 = alloca i32, align 4
  store %struct.bd_table* %0, %struct.bd_table** %4, align 8
  store %struct.bd_table* %1, %struct.bd_table** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bd_table*, %struct.bd_table** %5, align 8
  %8 = getelementptr inbounds %struct.bd_table, %struct.bd_table* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @lower_32_bits(i32 %9)
  %11 = call i8* @cpu_to_le32(i32 %10)
  %12 = ptrtoint i8* %11 to i32
  %13 = load %struct.bd_table*, %struct.bd_table** %4, align 8
  %14 = getelementptr inbounds %struct.bd_table, %struct.bd_table* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %12, i32* %22, align 4
  %23 = load %struct.bd_table*, %struct.bd_table** %5, align 8
  %24 = getelementptr inbounds %struct.bd_table, %struct.bd_table* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @upper_32_bits(i32 %25)
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.bd_table*, %struct.bd_table** %4, align 8
  %30 = getelementptr inbounds %struct.bd_table, %struct.bd_table* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %28, i32* %38, align 4
  %39 = load %struct.bd_table*, %struct.bd_table** %4, align 8
  %40 = getelementptr inbounds %struct.bd_table, %struct.bd_table* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* @MARK_CHAIN_BD, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.bd_table*, %struct.bd_table** %4, align 8
  %53 = getelementptr inbounds %struct.bd_table, %struct.bd_table* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  store i32 %51, i32* %61, align 4
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
