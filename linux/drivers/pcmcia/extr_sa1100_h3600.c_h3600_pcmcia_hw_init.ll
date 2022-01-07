; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1100_h3600.c_h3600_pcmcia_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1100_h3600.c_h3600_pcmcia_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"pcmcia1-detect\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"pcmcia0-detect\00", align 1
@SOC_STAT_CD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"pcmcia1-ready\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"pcmcia0-ready\00", align 1
@SOC_STAT_RDY = common dso_local global i64 0, align 8
@H3XXX_EGPIO_OPT_NVRAM_ON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"OPT NVRAM ON\00", align 1
@H3XXX_EGPIO_OPT_ON = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"OPT ON\00", align 1
@H3XXX_EGPIO_OPT_RESET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"OPT RESET\00", align 1
@H3XXX_EGPIO_CARD_RESET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"PCMCIA CARD RESET\00", align 1
@H3XXX_GPIO_PCMCIA_IRQ0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*)* @h3600_pcmcia_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h3600_pcmcia_hw_init(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  %5 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %6 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)
  %11 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %12 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* @SOC_STAT_CD, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i8* %10, i8** %16, align 8
  %17 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %18 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)
  %23 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %24 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* @SOC_STAT_RDY, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %22, i8** %28, align 8
  %29 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %30 = call i32 @soc_pcmcia_request_gpiods(%struct.soc_pcmcia_socket* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %106

35:                                               ; preds = %1
  %36 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %37 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %89 [
    i32 0, label %39
    i32 1, label %88
  ]

39:                                               ; preds = %35
  %40 = load i32, i32* @H3XXX_EGPIO_OPT_NVRAM_ON, align 4
  %41 = call i32 @gpio_request(i32 %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %102

45:                                               ; preds = %39
  %46 = load i32, i32* @H3XXX_EGPIO_OPT_NVRAM_ON, align 4
  %47 = call i32 @gpio_direction_output(i32 %46, i32 0)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %99

51:                                               ; preds = %45
  %52 = load i32, i32* @H3XXX_EGPIO_OPT_ON, align 4
  %53 = call i32 @gpio_request(i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %99

57:                                               ; preds = %51
  %58 = load i32, i32* @H3XXX_EGPIO_OPT_ON, align 4
  %59 = call i32 @gpio_direction_output(i32 %58, i32 0)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %96

63:                                               ; preds = %57
  %64 = load i32, i32* @H3XXX_EGPIO_OPT_RESET, align 4
  %65 = call i32 @gpio_request(i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %96

69:                                               ; preds = %63
  %70 = load i32, i32* @H3XXX_EGPIO_OPT_RESET, align 4
  %71 = call i32 @gpio_direction_output(i32 %70, i32 0)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %93

75:                                               ; preds = %69
  %76 = load i32, i32* @H3XXX_EGPIO_CARD_RESET, align 4
  %77 = call i32 @gpio_request(i32 %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %93

81:                                               ; preds = %75
  %82 = load i32, i32* @H3XXX_EGPIO_CARD_RESET, align 4
  %83 = call i32 @gpio_direction_output(i32 %82, i32 0)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %90

87:                                               ; preds = %81
  br label %89

88:                                               ; preds = %35
  br label %89

89:                                               ; preds = %35, %88, %87
  store i32 0, i32* %2, align 4
  br label %106

90:                                               ; preds = %86
  %91 = load i32, i32* @H3XXX_EGPIO_CARD_RESET, align 4
  %92 = call i32 @gpio_free(i32 %91)
  br label %93

93:                                               ; preds = %90, %80, %74
  %94 = load i32, i32* @H3XXX_EGPIO_OPT_RESET, align 4
  %95 = call i32 @gpio_free(i32 %94)
  br label %96

96:                                               ; preds = %93, %68, %62
  %97 = load i32, i32* @H3XXX_EGPIO_OPT_ON, align 4
  %98 = call i32 @gpio_free(i32 %97)
  br label %99

99:                                               ; preds = %96, %56, %50
  %100 = load i32, i32* @H3XXX_EGPIO_OPT_NVRAM_ON, align 4
  %101 = call i32 @gpio_free(i32 %100)
  br label %102

102:                                              ; preds = %99, %44
  %103 = load i32, i32* @H3XXX_GPIO_PCMCIA_IRQ0, align 4
  %104 = call i32 @gpio_free(i32 %103)
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %102, %89, %33
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @soc_pcmcia_request_gpiods(%struct.soc_pcmcia_socket*) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
