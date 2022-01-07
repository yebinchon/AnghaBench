; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c___aac_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c___aac_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32, i32, %struct.TYPE_10__*, i64, %struct.aac_dev*, i32*, %struct.fib*, %struct.TYPE_7__*, i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.fib = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@AAC_NUM_MGT_FIB = common dso_local global i32 0, align 4
@NoResponseExpected = common dso_local global i32 0, align 4
@Async = common dso_local global i32 0, align 4
@ResponseExpected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_dev*)* @__aac_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__aac_shutdown(%struct.aac_dev* %0) #0 {
  %2 = alloca %struct.aac_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib*, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %2, align 8
  %6 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %7 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %6, i32 0, i32 9
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %10 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %12 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %11, i32 0, i32 9
  %13 = call i32 @mutex_unlock(i32* %12)
  %14 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %15 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %74

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %64, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %22 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %21, i32 0, i32 7
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AAC_NUM_MGT_FIB, align 4
  %27 = add nsw i32 %25, %26
  %28 = icmp slt i32 %20, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %19
  %30 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %31 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %30, i32 0, i32 6
  %32 = load %struct.fib*, %struct.fib** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.fib, %struct.fib* %32, i64 %34
  store %struct.fib* %35, %struct.fib** %5, align 8
  %36 = load %struct.fib*, %struct.fib** %5, align 8
  %37 = getelementptr inbounds %struct.fib, %struct.fib* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NoResponseExpected, align 4
  %43 = load i32, i32* @Async, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @cpu_to_le32(i32 %44)
  %46 = and i32 %41, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %29
  %49 = load %struct.fib*, %struct.fib** %5, align 8
  %50 = getelementptr inbounds %struct.fib, %struct.fib* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ResponseExpected, align 4
  %56 = call i32 @cpu_to_le32(i32 %55)
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.fib*, %struct.fib** %5, align 8
  %61 = getelementptr inbounds %struct.fib, %struct.fib* %60, i32 0, i32 0
  %62 = call i32 @complete(i32* %61)
  br label %63

63:                                               ; preds = %59, %48, %29
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %19

67:                                               ; preds = %19
  %68 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %69 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @kthread_stop(i32* %70)
  %72 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %73 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %72, i32 0, i32 5
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %67, %1
  %75 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %76 = call i32 @aac_send_shutdown(%struct.aac_dev* %75)
  %77 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %78 = call i32 @aac_adapter_disable_int(%struct.aac_dev* %77)
  %79 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %80 = call i64 @aac_is_src(%struct.aac_dev* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %123

82:                                               ; preds = %74
  %83 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %84 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %111

87:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %107, %87
  %89 = load i32, i32* %3, align 4
  %90 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %91 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %88
  %95 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %96 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %95, i32 0, i32 2
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @pci_irq_vector(%struct.TYPE_10__* %97, i32 %98)
  %100 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %101 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %100, i32 0, i32 4
  %102 = load %struct.aac_dev*, %struct.aac_dev** %101, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %102, i64 %104
  %106 = call i32 @free_irq(i32 %99, %struct.aac_dev* %105)
  br label %107

107:                                              ; preds = %94
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %3, align 4
  br label %88

110:                                              ; preds = %88
  br label %122

111:                                              ; preds = %82
  %112 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %113 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %112, i32 0, i32 2
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %118 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %117, i32 0, i32 4
  %119 = load %struct.aac_dev*, %struct.aac_dev** %118, align 8
  %120 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %119, i64 0
  %121 = call i32 @free_irq(i32 %116, %struct.aac_dev* %120)
  br label %122

122:                                              ; preds = %111, %110
  br label %131

123:                                              ; preds = %74
  %124 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %125 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %124, i32 0, i32 2
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %130 = call i32 @free_irq(i32 %128, %struct.aac_dev* %129)
  br label %131

131:                                              ; preds = %123, %122
  %132 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %133 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %138 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %137, i32 0, i32 2
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = call i32 @pci_disable_msi(%struct.TYPE_10__* %139)
  br label %152

141:                                              ; preds = %131
  %142 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %143 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %148 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %147, i32 0, i32 2
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = call i32 @pci_disable_msix(%struct.TYPE_10__* %149)
  br label %151

151:                                              ; preds = %146, %141
  br label %152

152:                                              ; preds = %151, %136
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @aac_send_shutdown(%struct.aac_dev*) #1

declare dso_local i32 @aac_adapter_disable_int(%struct.aac_dev*) #1

declare dso_local i64 @aac_is_src(%struct.aac_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.aac_dev*) #1

declare dso_local i32 @pci_irq_vector(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_10__*) #1

declare dso_local i32 @pci_disable_msix(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
