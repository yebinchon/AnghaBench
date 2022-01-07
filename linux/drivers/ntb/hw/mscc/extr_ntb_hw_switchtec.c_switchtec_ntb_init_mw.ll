; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_init_mw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_init_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchtec_ntb = type { i8*, i8*, %struct.TYPE_3__*, %struct.TYPE_4__*, i32, i8*, i8*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"MWs: %d direct, %d lut\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Peer MWs: %d direct, %d lut\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switchtec_ntb*)* @switchtec_ntb_init_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switchtec_ntb_init_mw(%struct.switchtec_ntb* %0) #0 {
  %2 = alloca %struct.switchtec_ntb*, align 8
  store %struct.switchtec_ntb* %0, %struct.switchtec_ntb** %2, align 8
  %3 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %4 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %3, i32 0, i32 8
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %7 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %6, i32 0, i32 7
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call i8* @map_bars(i32 %5, %struct.TYPE_4__* %8)
  %10 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %11 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %10, i32 0, i32 6
  store i8* %9, i8** %11, align 8
  %12 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %13 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %12, i32 0, i32 7
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i8* @ioread16(i32* %15)
  %17 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %18 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %20 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %19, i32 0, i32 5
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @rounddown_pow_of_two(i8* %21)
  %23 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %24 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %26 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %30 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %29, i32 0, i32 6
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %33 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %32, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @dev_dbg(i32* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %34)
  %36 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %37 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %40 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i8* @map_bars(i32 %38, %struct.TYPE_4__* %41)
  %43 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %44 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %46 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i8* @ioread16(i32* %48)
  %50 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %51 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %53 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @rounddown_pow_of_two(i8* %54)
  %56 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %57 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %59 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %63 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %66 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @dev_dbg(i32* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %64, i8* %67)
  ret void
}

declare dso_local i8* @map_bars(i32, %struct.TYPE_4__*) #1

declare dso_local i8* @ioread16(i32*) #1

declare dso_local i8* @rounddown_pow_of_two(i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
