; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_manager.c_pnp_assign_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_manager.c_pnp_assign_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.pnp_irq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32, i32, i32 }

@pnp_assign_irq.xtab = internal global [16 x i16] [i16 5, i16 10, i16 11, i16 12, i16 9, i16 14, i16 15, i16 7, i16 3, i16 4, i16 13, i16 0, i16 1, i16 6, i16 8, i16 2], align 16
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"  irq %d already set to %d flags %#lx\0A\00", align 1
@IORESOURCE_AUTO = common dso_local global i32 0, align 4
@PNP_IRQ_NR = common dso_local global i32 0, align 4
@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"  irq %d disabled\0A\00", align 1
@IORESOURCE_IRQ_OPTIONAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"  irq %d disabled (optional)\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"  couldn't assign irq %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.pnp_irq*, i32)* @pnp_assign_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnp_assign_irq(%struct.pnp_dev* %0, %struct.pnp_irq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnp_dev*, align 8
  %6 = alloca %struct.pnp_irq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource, align 4
  %10 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %5, align 8
  store %struct.pnp_irq* %1, %struct.pnp_irq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %12 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %13 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IORESOURCE_IRQ, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.resource* @pnp_find_resource(%struct.pnp_dev* %11, i32 %14, i32 %15, i32 %16)
  store %struct.resource* %17, %struct.resource** %8, align 8
  %18 = load %struct.resource*, %struct.resource** %8, align 8
  %19 = icmp ne %struct.resource* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %22 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.resource*, %struct.resource** %8, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.resource*, %struct.resource** %8, align 8
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29)
  store i32 0, i32* %4, align 4
  br label %152

31:                                               ; preds = %3
  store %struct.resource* %9, %struct.resource** %8, align 8
  %32 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %33 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IORESOURCE_AUTO, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.resource*, %struct.resource** %8, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.resource*, %struct.resource** %8, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  store i32 -1, i32* %40, align 4
  %41 = load %struct.resource*, %struct.resource** %8, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 2
  store i32 -1, i32* %42, align 4
  %43 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %44 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PNP_IRQ_NR, align 4
  %48 = call i64 @bitmap_empty(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %31
  %51 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %52 = load %struct.resource*, %struct.resource** %8, align 8
  %53 = getelementptr inbounds %struct.resource, %struct.resource* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %57 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %143

60:                                               ; preds = %31
  %61 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %62 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PNP_IRQ_NR, align 4
  %66 = call i32 @find_next_bit(i32 %64, i32 %65, i32 16)
  %67 = load %struct.resource*, %struct.resource** %8, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.resource*, %struct.resource** %8, align 8
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PNP_IRQ_NR, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %60
  %75 = load %struct.resource*, %struct.resource** %8, align 8
  %76 = getelementptr inbounds %struct.resource, %struct.resource* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.resource*, %struct.resource** %8, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  br label %143

80:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %112, %80
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 16
  br i1 %83, label %84, label %115

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [16 x i16], [16 x i16]* @pnp_assign_irq.xtab, i64 0, i64 %86
  %88 = load i16, i16* %87, align 2
  %89 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %90 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @test_bit(i16 zeroext %88, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %84
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [16 x i16], [16 x i16]* @pnp_assign_irq.xtab, i64 0, i64 %97
  %99 = load i16, i16* %98, align 2
  %100 = zext i16 %99 to i32
  %101 = load %struct.resource*, %struct.resource** %8, align 8
  %102 = getelementptr inbounds %struct.resource, %struct.resource* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.resource*, %struct.resource** %8, align 8
  %104 = getelementptr inbounds %struct.resource, %struct.resource* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 4
  %105 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %106 = load %struct.resource*, %struct.resource** %8, align 8
  %107 = call i64 @pnp_check_irq(%struct.pnp_dev* %105, %struct.resource* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %95
  br label %143

110:                                              ; preds = %95
  br label %111

111:                                              ; preds = %110, %84
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %81

115:                                              ; preds = %81
  %116 = load %struct.pnp_irq*, %struct.pnp_irq** %6, align 8
  %117 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @IORESOURCE_IRQ_OPTIONAL, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %115
  %123 = load %struct.resource*, %struct.resource** %8, align 8
  %124 = getelementptr inbounds %struct.resource, %struct.resource* %123, i32 0, i32 0
  store i32 -1, i32* %124, align 4
  %125 = load %struct.resource*, %struct.resource** %8, align 8
  %126 = getelementptr inbounds %struct.resource, %struct.resource* %125, i32 0, i32 2
  store i32 -1, i32* %126, align 4
  %127 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %128 = load %struct.resource*, %struct.resource** %8, align 8
  %129 = getelementptr inbounds %struct.resource, %struct.resource* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %133 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %132, i32 0, i32 0
  %134 = load i32, i32* %7, align 4
  %135 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  br label %143

136:                                              ; preds = %115
  %137 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %138 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %137, i32 0, i32 0
  %139 = load i32, i32* %7, align 4
  %140 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %138, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @EBUSY, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %152

143:                                              ; preds = %122, %109, %74, %50
  %144 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %145 = load %struct.resource*, %struct.resource** %8, align 8
  %146 = getelementptr inbounds %struct.resource, %struct.resource* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.resource*, %struct.resource** %8, align 8
  %149 = getelementptr inbounds %struct.resource, %struct.resource* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @pnp_add_irq_resource(%struct.pnp_dev* %144, i32 %147, i32 %150)
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %143, %136, %20
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local %struct.resource* @pnp_find_resource(%struct.pnp_dev*, i32, i32, i32) #1

declare dso_local i32 @pnp_dbg(i32*, i8*, i32, ...) #1

declare dso_local i64 @bitmap_empty(i32, i32) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i64 @test_bit(i16 zeroext, i32) #1

declare dso_local i64 @pnp_check_irq(%struct.pnp_dev*, %struct.resource*) #1

declare dso_local i32 @pnp_add_irq_resource(%struct.pnp_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
