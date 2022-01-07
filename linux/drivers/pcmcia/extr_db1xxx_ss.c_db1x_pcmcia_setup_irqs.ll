; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_db1xxx_ss.c_db1x_pcmcia_setup_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_db1xxx_ss.c_db1x_pcmcia_setup_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db1x_pcmcia_sock = type { i32, i64, i32, i32 }

@db1000_pcmcia_stschgirq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"pcmcia_stschg\00", align 1
@BOARD_TYPE_DB1200 = common dso_local global i64 0, align 8
@BOARD_TYPE_DB1300 = common dso_local global i64 0, align 8
@db1200_pcmcia_cdirq = common dso_local global i32 0, align 4
@db1200_pcmcia_cdirq_fn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"pcmcia_insert\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"pcmcia_eject\00", align 1
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@db1000_pcmcia_cdirq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"pcmcia_carddetect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.db1x_pcmcia_sock*)* @db1x_pcmcia_setup_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db1x_pcmcia_setup_irqs(%struct.db1x_pcmcia_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.db1x_pcmcia_sock*, align 8
  %4 = alloca i32, align 4
  store %struct.db1x_pcmcia_sock* %0, %struct.db1x_pcmcia_sock** %3, align 8
  %5 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %6 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %11 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @db1000_pcmcia_stschgirq, align 4
  %14 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %15 = call i32 @request_irq(i32 %12, i32 %13, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.db1x_pcmcia_sock* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %105

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %23 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BOARD_TYPE_DB1200, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %29 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BOARD_TYPE_DB1300, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %75

33:                                               ; preds = %27, %21
  %34 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %35 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @db1200_pcmcia_cdirq, align 4
  %38 = load i32, i32* @db1200_pcmcia_cdirq_fn, align 4
  %39 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %40 = call i32 @request_threaded_irq(i32 %36, i32 %37, i32 %38, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.db1x_pcmcia_sock* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %92

44:                                               ; preds = %33
  %45 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %46 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @db1200_pcmcia_cdirq, align 4
  %49 = load i32, i32* @db1200_pcmcia_cdirq_fn, align 4
  %50 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %51 = call i32 @request_threaded_irq(i32 %47, i32 %48, i32 %49, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.db1x_pcmcia_sock* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %56 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %59 = call i32 @free_irq(i32 %57, %struct.db1x_pcmcia_sock* %58)
  br label %92

60:                                               ; preds = %44
  %61 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %62 = call i64 @db1x_card_inserted(%struct.db1x_pcmcia_sock* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %66 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @enable_irq(i32 %67)
  br label %74

69:                                               ; preds = %60
  %70 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %71 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @enable_irq(i32 %72)
  br label %74

74:                                               ; preds = %69, %64
  br label %91

75:                                               ; preds = %27
  %76 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %77 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %80 = call i32 @irq_set_irq_type(i32 %78, i32 %79)
  %81 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %82 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @db1000_pcmcia_cdirq, align 4
  %85 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %86 = call i32 @request_irq(i32 %83, i32 %84, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.db1x_pcmcia_sock* %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %92

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %74
  store i32 0, i32* %2, align 4
  br label %105

92:                                               ; preds = %89, %54, %43
  %93 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %94 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %99 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %3, align 8
  %102 = call i32 @free_irq(i32 %100, %struct.db1x_pcmcia_sock* %101)
  br label %103

103:                                              ; preds = %97, %92
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %91, %18
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.db1x_pcmcia_sock*) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i8*, %struct.db1x_pcmcia_sock*) #1

declare dso_local i32 @free_irq(i32, %struct.db1x_pcmcia_sock*) #1

declare dso_local i64 @db1x_card_inserted(%struct.db1x_pcmcia_sock*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
