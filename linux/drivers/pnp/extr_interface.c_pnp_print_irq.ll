; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_interface.c_pnp_print_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_interface.c_pnp_print_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_irq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%sirq \00", align 1
@PNP_IRQ_NR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"2/9\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@IORESOURCE_IRQ_HIGHEDGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c" High-Edge\00", align 1
@IORESOURCE_IRQ_LOWEDGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c" Low-Edge\00", align 1
@IORESOURCE_IRQ_HIGHLEVEL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c" High-Level\00", align 1
@IORESOURCE_IRQ_LOWLEVEL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c" Low-Level\00", align 1
@IORESOURCE_IRQ_OPTIONAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c" (optional)\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.pnp_irq*)* @pnp_print_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnp_print_irq(i32* %0, i8* %1, %struct.pnp_irq* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pnp_irq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.pnp_irq* %2, %struct.pnp_irq** %6, align 8
  store i32 1, i32* %7, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %46, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @PNP_IRQ_NR, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %19 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @test_bit(i32 %17, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %31

30:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 9
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %31
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %44

40:                                               ; preds = %34
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %37
  br label %45

45:                                               ; preds = %44, %16
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %12

49:                                               ; preds = %12
  %50 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %51 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PNP_IRQ_NR, align 4
  %55 = call i64 @bitmap_empty(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %49
  %61 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %62 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IORESOURCE_IRQ_HIGHEDGE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %60
  %71 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %72 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IORESOURCE_IRQ_LOWEDGE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %70
  %81 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %82 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IORESOURCE_IRQ_HIGHLEVEL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %80
  %91 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %92 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IORESOURCE_IRQ_LOWLEVEL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %90
  %101 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %102 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IORESOURCE_IRQ_OPTIONAL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %100
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 (i32*, i8*, ...) @pnp_printf(i32* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pnp_printf(i32*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @bitmap_empty(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
