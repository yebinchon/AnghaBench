; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32* }
%struct.icom_port = type { i8, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"STARTUP\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Unusable Port, port configuration missing\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"CABLE_ID\00", align 1
@ICOM_CABLE_ID_MASK = common dso_local global i8 0, align 1
@ICOM_CABLE_ID_VALID = common dso_local global i8 0, align 1
@NO_CABLE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@icom_lock = common dso_local global i32 0, align 4
@int_mask_tbl = common dso_local global %struct.TYPE_11__* null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Invalid port assignment\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icom_port*)* @startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @startup(%struct.icom_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icom_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.icom_port* %0, %struct.icom_port** %3, align 8
  %9 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %10 = call i32 @trace(%struct.icom_port* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 zeroext 0)
  %11 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %12 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %11, i32 0, i32 5
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %17 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %16, i32 0, i32 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %181

25:                                               ; preds = %1
  %26 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %27 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %26, i32 0, i32 5
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = call zeroext i8 @readb(i32* %29)
  store i8 %30, i8* %6, align 1
  %31 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %32 = load i8, i8* %6, align 1
  %33 = call i32 @trace(%struct.icom_port* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %32)
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @ICOM_CABLE_ID_MASK, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %35, %37
  %39 = ashr i32 %38, 4
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %5, align 1
  %41 = load i8, i8* %6, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @ICOM_CABLE_ID_VALID, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %25
  %48 = load i8, i8* %5, align 1
  %49 = zext i8 %48 to i32
  %50 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %51 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %50, i32 0, i32 0
  %52 = load i8, i8* %51, align 8
  %53 = zext i8 %52 to i32
  %54 = icmp ne i32 %49, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %47, %25
  %56 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %57 = call i32 @load_code(%struct.icom_port* %56)
  %58 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %59 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %58, i32 0, i32 5
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = call zeroext i8 @readb(i32* %61)
  store i8 %62, i8* %6, align 1
  %63 = load i8, i8* %6, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @ICOM_CABLE_ID_MASK, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %64, %66
  %68 = ashr i32 %67, 4
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %5, align 1
  %70 = load i8, i8* %6, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @ICOM_CABLE_ID_VALID, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %55
  %77 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %78 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %77, i32 0, i32 0
  %79 = load i8, i8* %78, align 8
  %80 = zext i8 %79 to i64
  %81 = load i64, i64* @NO_CABLE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %76, %55
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %181

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %47
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @spin_lock_irqsave(i32* @icom_lock, i64 %88)
  %90 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %91 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** @int_mask_tbl, align 8
  %95 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %94)
  %96 = icmp sge i32 %93, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %87
  %98 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %99 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %98, i32 0, i32 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %178

105:                                              ; preds = %87
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %121

111:                                              ; preds = %108, %105
  %112 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %113 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %112, i32 0, i32 3
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** @int_mask_tbl, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  store i32* %115, i32** %120, align 8
  br label %131

121:                                              ; preds = %108
  %122 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %123 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %122, i32 0, i32 3
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** @int_mask_tbl, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  store i32* %125, i32** %130, align 8
  br label %131

131:                                              ; preds = %121, %111
  %132 = load i32, i32* %8, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %8, align 4
  %136 = icmp eq i32 %135, 2
  br i1 %136, label %137, label %142

137:                                              ; preds = %134, %131
  %138 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %139 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @writew(i32 255, i32 %140)
  br label %147

142:                                              ; preds = %134
  %143 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %144 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @writew(i32 16128, i32 %145)
  br label %147

147:                                              ; preds = %142, %137
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** @int_mask_tbl, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = call i64 @readl(i32* %153)
  store i64 %154, i64* %4, align 8
  %155 = load i64, i64* %4, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** @int_mask_tbl, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = xor i64 %161, -1
  %163 = and i64 %155, %162
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** @int_mask_tbl, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @writel(i64 %163, i32* %169)
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** @int_mask_tbl, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = call i64 @readl(i32* %176)
  br label %178

178:                                              ; preds = %147, %97
  %179 = load i64, i64* %7, align 8
  %180 = call i32 @spin_unlock_irqrestore(i32* @icom_lock, i64 %179)
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %178, %83, %15
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @trace(%struct.icom_port*, i8*, i8 zeroext) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local zeroext i8 @readb(i32*) #1

declare dso_local i32 @load_code(%struct.icom_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i64 @readl(i32*) #1

declare dso_local i32 @writel(i64, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
