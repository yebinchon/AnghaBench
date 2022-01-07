; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_irq_desc = type { i32, i32 }
%struct.sci_port = type { i32*, i32*, %struct.uart_port }
%struct.uart_port = type { i32, i32, i32 }

@SCIx_NR_IRQS = common dso_local global i32 0, align 4
@SCIx_MUX_IRQ = common dso_local global i32 0, align 4
@sci_irq_desc = common dso_local global %struct.sci_irq_desc* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Can't allocate %s IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sci_port*)* @sci_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_request_irq(%struct.sci_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sci_port*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sci_irq_desc*, align 8
  %10 = alloca i32, align 4
  store %struct.sci_port* %0, %struct.sci_port** %3, align 8
  %11 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %12 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %11, i32 0, i32 2
  store %struct.uart_port* %12, %struct.uart_port** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %134, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SCIx_NR_IRQS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %139

17:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %42, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %24 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %31 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %29, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %18

45:                                               ; preds = %18
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %134

50:                                               ; preds = %45
  %51 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %52 = call i64 @SCIx_IRQ_IS_MUXED(%struct.sci_port* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* @SCIx_MUX_IRQ, align 4
  store i32 %55, i32* %5, align 4
  %56 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  br label %74

59:                                               ; preds = %50
  %60 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %61 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  br label %134

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %54
  %75 = load %struct.sci_irq_desc*, %struct.sci_irq_desc** @sci_irq_desc, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.sci_irq_desc, %struct.sci_irq_desc* %75, i64 %77
  store %struct.sci_irq_desc* %78, %struct.sci_irq_desc** %9, align 8
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %81 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_name(i32 %82)
  %84 = load %struct.sci_irq_desc*, %struct.sci_irq_desc** %9, align 8
  %85 = getelementptr inbounds %struct.sci_irq_desc, %struct.sci_irq_desc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @kasprintf(i32 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %86)
  %88 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %89 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  %94 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %95 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %74
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %8, align 4
  br label %156

105:                                              ; preds = %74
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.sci_irq_desc*, %struct.sci_irq_desc** %9, align 8
  %108 = getelementptr inbounds %struct.sci_irq_desc, %struct.sci_irq_desc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %111 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %114 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %121 = call i32 @request_irq(i32 %106, i32 %109, i32 %112, i32 %119, %struct.sci_port* %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %105
  %126 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %127 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.sci_irq_desc*, %struct.sci_irq_desc** %9, align 8
  %130 = getelementptr inbounds %struct.sci_irq_desc, %struct.sci_irq_desc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dev_err(i32 %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  br label %140

133:                                              ; preds = %105
  br label %134

134:                                              ; preds = %133, %72, %49
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %13

139:                                              ; preds = %13
  store i32 0, i32* %2, align 4
  br label %172

140:                                              ; preds = %125
  br label %141

141:                                              ; preds = %145, %140
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %5, align 4
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %141
  %146 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %147 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %154 = call i32 @free_irq(i32 %152, %struct.sci_port* %153)
  br label %141

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %155, %102
  br label %157

157:                                              ; preds = %161, %156
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %6, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %157
  %162 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %163 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @kfree(i32 %168)
  br label %157

170:                                              ; preds = %157
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %170, %139
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i64 @SCIx_IRQ_IS_MUXED(%struct.sci_port*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kasprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.sci_port*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.sci_port*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
