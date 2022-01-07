; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_cls.c_cls_copy_data_from_uart_to_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_cls.c_cls_copy_data_from_uart_to_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i8**, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@RQUEUEMASK = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@EQUEUEMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @cls_copy_data_from_uart_to_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cls_copy_data_from_uart_to_queue(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %11 = icmp ne %struct.jsm_channel* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %196

13:                                               ; preds = %1
  %14 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %15 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %14, i32 0, i32 6
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %19 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RQUEUEMASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %24 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RQUEUEMASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %29 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %4, align 4
  %31 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %32 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %31, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %13
  %40 = load i32, i32* @RQUEUEMASK, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %13
  %45 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %46 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IGNBRK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @UART_LSR_BI, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %44
  br label %56

56:                                               ; preds = %55, %73, %172
  %57 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %58 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %57, i32 0, i32 11
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = call i8* @readb(i32* %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @UART_LSR_DR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %56
  br label %181

68:                                               ; preds = %56
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  %74 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %75 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %74, i32 0, i32 11
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i8* @readb(i32* %77)
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* %9, align 4
  br label %56

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %84, %80
  %82 = load i32, i32* %3, align 4
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* @RQUEUEMASK, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %91 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %93 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %92, i32 0, i32 13
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %81

98:                                               ; preds = %81
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @UART_LSR_BI, align 4
  %101 = load i32, i32* @UART_LSR_PE, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @UART_LSR_FE, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %99, %104
  %106 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %107 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %105, i32* %111, align 4
  %112 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %113 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %112, i32 0, i32 11
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = call i8* @readb(i32* %115)
  %117 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %118 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %117, i32 0, i32 12
  %119 = load i8**, i8*** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  store i8* %116, i8** %122, align 8
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %3, align 4
  %125 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %126 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @UART_LSR_PE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %98
  %136 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %137 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %135, %98
  %141 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %142 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @UART_LSR_BI, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %140
  %152 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %153 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %152, i32 0, i32 9
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %151, %140
  %157 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %158 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @UART_LSR_FE, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %156
  %168 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %169 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %167, %156
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 1
  %175 = load i32, i32* @RQUEUEMASK, align 4
  %176 = and i32 %174, %175
  store i32 %176, i32* %6, align 4
  %177 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %178 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 8
  br label %56

181:                                              ; preds = %67
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @RQUEUEMASK, align 4
  %184 = and i32 %182, %183
  %185 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %186 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @EQUEUEMASK, align 4
  %189 = and i32 %187, %188
  %190 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %191 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %190, i32 0, i32 5
  store i32 %189, i32* %191, align 8
  %192 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %193 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %192, i32 0, i32 6
  %194 = load i64, i64* %8, align 8
  %195 = call i32 @spin_unlock_irqrestore(i32* %193, i64 %194)
  br label %196

196:                                              ; preds = %181, %12
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @readb(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
