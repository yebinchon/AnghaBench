; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_issue_scb_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_issue_scb_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@BOARD_MEMMAP = common dso_local global i32 0, align 4
@INTR_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Blocked mailbox......!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32*)* @issue_scb_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @issue_scb_block(%struct.TYPE_22__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %6, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %7, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %16 = call i64 @mega_busywait_mbox(%struct.TYPE_22__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %146

19:                                               ; preds = %2
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %21 = bitcast %struct.TYPE_20__* %20 to i8*
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @memcpy(i8* %21, i32* %22, i32 4)
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  store volatile i32 254, i32* %26, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  store volatile i32 1, i32* %29, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %45 [
    i32 130, label %33
    i32 129, label %33
    i32 128, label %33
    i32 131, label %33
  ]

33:                                               ; preds = %19, %19, %19, %19
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load volatile i32, i32* %36, align 4
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  store volatile i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  store volatile i32 0, i32* %41, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  store volatile i32 -1, i32* %44, align 4
  br label %50

45:                                               ; preds = %19
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  store volatile i32 0, i32* %47, align 4
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  store volatile i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %33
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @BOARD_MEMMAP, align 4
  %55 = and i32 %53, %54
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %119

58:                                               ; preds = %50
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 4
  store volatile i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  store volatile i32 0, i32* %64, align 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 2
  store volatile i32 255, i32* %67, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 3
  store volatile i32 255, i32* %70, align 4
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, 1
  %76 = call i32 @WRINDOOR(%struct.TYPE_22__* %71, i32 %75)
  br label %77

77:                                               ; preds = %83, %58
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 2
  %81 = load volatile i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 255
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = call i32 (...) @cpu_relax()
  br label %77

85:                                               ; preds = %77
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  store volatile i32 255, i32* %88, align 8
  br label %89

89:                                               ; preds = %96, %85
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 4
  %93 = load volatile i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = icmp ne i32 %94, 119
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = call i32 (...) @cpu_relax()
  br label %89

98:                                               ; preds = %89
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 4
  store volatile i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  store volatile i32 119, i32* %104, align 4
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, 2
  %110 = call i32 @WRINDOOR(%struct.TYPE_22__* %105, i32 %109)
  br label %111

111:                                              ; preds = %116, %98
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %113 = call i32 @RDINDOOR(%struct.TYPE_22__* %112)
  %114 = and i32 %113, 2
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 (...) @cpu_relax()
  br label %111

118:                                              ; preds = %111
  br label %141

119:                                              ; preds = %50
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %121 = call i32 @irq_disable(%struct.TYPE_22__* %120)
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %123 = call i32 @issue_command(%struct.TYPE_22__* %122)
  br label %124

124:                                              ; preds = %131, %119
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %126 = call i32 @irq_state(%struct.TYPE_22__* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* @INTR_VALID, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = call i32 (...) @cpu_relax()
  br label %124

133:                                              ; preds = %124
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @set_irq_state(%struct.TYPE_22__* %134, i32 %135)
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %138 = call i32 @irq_enable(%struct.TYPE_22__* %137)
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %140 = call i32 @irq_ack(%struct.TYPE_22__* %139)
  br label %141

141:                                              ; preds = %133, %118
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 3
  %145 = load volatile i32, i32* %144, align 4
  store i32 %145, i32* %3, align 4
  br label %153

146:                                              ; preds = %18
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = call i32 @dev_warn(i32* %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %152 = call i32 @udelay(i32 1000)
  store i32 -1, i32* %3, align 4
  br label %153

153:                                              ; preds = %146, %141
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i64 @mega_busywait_mbox(%struct.TYPE_22__*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @WRINDOOR(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @RDINDOOR(%struct.TYPE_22__*) #1

declare dso_local i32 @irq_disable(%struct.TYPE_22__*) #1

declare dso_local i32 @issue_command(%struct.TYPE_22__*) #1

declare dso_local i32 @irq_state(%struct.TYPE_22__*) #1

declare dso_local i32 @set_irq_state(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @irq_enable(%struct.TYPE_22__*) #1

declare dso_local i32 @irq_ack(%struct.TYPE_22__*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
