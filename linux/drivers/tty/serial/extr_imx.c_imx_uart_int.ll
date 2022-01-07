; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@USR1 = common dso_local global i32 0, align 4
@USR2 = common dso_local global i32 0, align 4
@UCR1 = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i32 0, align 4
@UCR3 = common dso_local global i32 0, align 4
@UCR4 = common dso_local global i32 0, align 4
@UCR1_RRDYEN = common dso_local global i32 0, align 4
@USR1_RRDY = common dso_local global i32 0, align 4
@UCR2_ATEN = common dso_local global i32 0, align 4
@USR1_AGTIM = common dso_local global i32 0, align 4
@UCR1_TRDYEN = common dso_local global i32 0, align 4
@USR1_TRDY = common dso_local global i32 0, align 4
@UCR4_TCEN = common dso_local global i32 0, align 4
@USR2_TXDC = common dso_local global i32 0, align 4
@UCR3_DTRDEN = common dso_local global i32 0, align 4
@USR1_DTRD = common dso_local global i32 0, align 4
@UCR1_RTSDEN = common dso_local global i32 0, align 4
@USR1_RTSD = common dso_local global i32 0, align 4
@UCR3_AWAKEN = common dso_local global i32 0, align 4
@USR1_AWAKE = common dso_local global i32 0, align 4
@UCR4_OREN = common dso_local global i32 0, align 4
@USR2_ORE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @imx_uart_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_uart_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.imx_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.imx_port*
  store %struct.imx_port* %14, %struct.imx_port** %5, align 8
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %17 = load i32, i32* @USR1, align 4
  %18 = call i32 @imx_uart_readl(%struct.imx_port* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %20 = load i32, i32* @USR2, align 4
  %21 = call i32 @imx_uart_readl(%struct.imx_port* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %23 = load i32, i32* @UCR1, align 4
  %24 = call i32 @imx_uart_readl(%struct.imx_port* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %26 = load i32, i32* @UCR2, align 4
  %27 = call i32 @imx_uart_readl(%struct.imx_port* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %29 = load i32, i32* @UCR3, align 4
  %30 = call i32 @imx_uart_readl(%struct.imx_port* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %32 = load i32, i32* @UCR4, align 4
  %33 = call i32 @imx_uart_readl(%struct.imx_port* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @UCR1_RRDYEN, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %2
  %39 = load i32, i32* @USR1_RRDY, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %38, %2
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @UCR2_ATEN, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @USR1_AGTIM, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @UCR1_TRDYEN, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @USR1_TRDY, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %58, %53
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @UCR4_TCEN, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* @USR2_TXDC, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @UCR3_DTRDEN, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32, i32* @USR1_DTRD, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @UCR1_RTSDEN, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* @USR1_RTSD, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @UCR3_AWAKEN, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* @USR1_AWAKE, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @UCR4_OREN, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32, i32* @USR2_ORE, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @USR1_RRDY, align 4
  %116 = load i32, i32* @USR1_AGTIM, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load i32, i32* %3, align 4
  %122 = load i8*, i8** %4, align 8
  %123 = call i32 @imx_uart_rxint(i32 %121, i8* %122)
  %124 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %120, %113
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @USR1_TRDY, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @USR2_TXDC, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130, %125
  %136 = load i32, i32* %3, align 4
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 @imx_uart_txint(i32 %136, i8* %137)
  %139 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %135, %130
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @USR1_DTRD, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %161

145:                                              ; preds = %140
  %146 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %147 = load i32, i32* @USR1_DTRD, align 4
  %148 = load i32, i32* @USR1, align 4
  %149 = call i32 @imx_uart_writel(%struct.imx_port* %146, i32 %147, i32 %148)
  %150 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %151 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = call i32 @spin_lock(i32* %152)
  %154 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %155 = call i32 @imx_uart_mctrl_check(%struct.imx_port* %154)
  %156 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %157 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = call i32 @spin_unlock(i32* %158)
  %160 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %145, %140
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @USR1_RTSD, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load i32, i32* %3, align 4
  %168 = load i8*, i8** %4, align 8
  %169 = call i32 @imx_uart_rtsint(i32 %167, i8* %168)
  %170 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %166, %161
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @USR1_AWAKE, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %178 = load i32, i32* @USR1_AWAKE, align 4
  %179 = load i32, i32* @USR1, align 4
  %180 = call i32 @imx_uart_writel(%struct.imx_port* %177, i32 %178, i32 %179)
  %181 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %181, i32* %12, align 4
  br label %182

182:                                              ; preds = %176, %171
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @USR2_ORE, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %182
  %188 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %189 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %195 = load i32, i32* @USR2_ORE, align 4
  %196 = load i32, i32* @USR2, align 4
  %197 = call i32 @imx_uart_writel(%struct.imx_port* %194, i32 %195, i32 %196)
  %198 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %198, i32* %12, align 4
  br label %199

199:                                              ; preds = %187, %182
  %200 = load i32, i32* %12, align 4
  ret i32 %200
}

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_rxint(i32, i8*) #1

declare dso_local i32 @imx_uart_txint(i32, i8*) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @imx_uart_mctrl_check(%struct.imx_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @imx_uart_rtsint(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
