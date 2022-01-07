; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32* }
%struct.icom_port = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@icom_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"SHUTDOWN\00", align 1
@int_mask_tbl = common dso_local global %struct.TYPE_11__* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid port assignment\0A\00", align 1
@CMD_SND_BREAK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icom_port*)* @shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown(%struct.icom_port* %0) #0 {
  %2 = alloca %struct.icom_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.icom_port* %0, %struct.icom_port** %2, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @icom_lock, i64 %7)
  %9 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %10 = call i32 @trace(%struct.icom_port* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %11 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %12 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** @int_mask_tbl, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %15)
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %20 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %19, i32 0, i32 3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %82

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %42

32:                                               ; preds = %29, %26
  %33 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %34 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %33, i32 0, i32 2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** @int_mask_tbl, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i32* %36, i32** %41, align 8
  br label %52

42:                                               ; preds = %29
  %43 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %44 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %43, i32 0, i32 2
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** @int_mask_tbl, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  store i32* %46, i32** %51, align 8
  br label %52

52:                                               ; preds = %42, %32
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** @int_mask_tbl, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @readl(i32* %58)
  store i64 %59, i64* %3, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** @int_mask_tbl, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = or i64 %60, %66
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** @int_mask_tbl, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @writel(i64 %67, i32* %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** @int_mask_tbl, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @readl(i32* %80)
  br label %82

82:                                               ; preds = %52, %18
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* @icom_lock, i64 %83)
  %85 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %86 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = call zeroext i8 @readb(i32* %88)
  store i8 %89, i8* %4, align 1
  %90 = load i8, i8* %4, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* @CMD_SND_BREAK, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %82
  %97 = load i8, i8* %4, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* @CMD_SND_BREAK, align 1
  %100 = zext i8 %99 to i32
  %101 = xor i32 %100, -1
  %102 = and i32 %98, %101
  %103 = trunc i32 %102 to i8
  %104 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %105 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %104, i32 0, i32 1
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = call i32 @writeb(i8 zeroext %103, i32* %107)
  br label %109

109:                                              ; preds = %96, %82
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @trace(%struct.icom_port*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @readl(i32*) #1

declare dso_local i32 @writel(i64, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local zeroext i8 @readb(i32*) #1

declare dso_local i32 @writeb(i8 zeroext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
