; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclinkmp.c_enable_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclinkmp.c_enable_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@MD2 = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@RXS = common dso_local global i32 0, align 4
@TXS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @enable_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_loopback(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %2
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = load i32, i32* @MD2, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = load i32, i32* @MD2, align 4
  %12 = call i32 @read_reg(%struct.TYPE_11__* %10, i32 %11)
  %13 = load i32, i32* @BIT1, align 4
  %14 = load i32, i32* @BIT0, align 4
  %15 = add nsw i32 %13, %14
  %16 = or i32 %12, %15
  %17 = trunc i32 %16 to i8
  %18 = zext i8 %17 to i32
  %19 = call i32 @write_reg(%struct.TYPE_11__* %8, i32 %9, i32 %18)
  %20 = load i32, i32* @BIT0, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %23, 2
  %25 = shl i32 %20, %24
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %28, i64 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %25
  store i32 %33, i32* %31, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = call i32 @write_control_reg(%struct.TYPE_11__* %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = load i32, i32* @RXS, align 4
  %38 = call i32 @write_reg(%struct.TYPE_11__* %36, i32 %37, i32 64)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = load i32, i32* @TXS, align 4
  %41 = call i32 @write_reg(%struct.TYPE_11__* %39, i32 %40, i32 64)
  br label %62

42:                                               ; preds = %2
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = load i32, i32* @MD2, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = load i32, i32* @MD2, align 4
  %47 = call i32 @read_reg(%struct.TYPE_11__* %45, i32 %46)
  %48 = load i32, i32* @BIT1, align 4
  %49 = load i32, i32* @BIT0, align 4
  %50 = add nsw i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = and i32 %47, %51
  %53 = trunc i32 %52 to i8
  %54 = zext i8 %53 to i32
  %55 = call i32 @write_reg(%struct.TYPE_11__* %43, i32 %44, i32 %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = load i32, i32* @RXS, align 4
  %58 = call i32 @write_reg(%struct.TYPE_11__* %56, i32 %57, i32 0)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = load i32, i32* @TXS, align 4
  %61 = call i32 @write_reg(%struct.TYPE_11__* %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %42, %7
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @set_rate(%struct.TYPE_11__* %69, i32 %73)
  br label %78

75:                                               ; preds = %62
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = call i32 @set_rate(%struct.TYPE_11__* %76, i32 3686400)
  br label %78

78:                                               ; preds = %75, %68
  ret void
}

declare dso_local i32 @write_reg(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @read_reg(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @write_control_reg(%struct.TYPE_11__*) #1

declare dso_local i32 @set_rate(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
