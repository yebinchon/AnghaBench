; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-mcp23s08.c_mcp23s08_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-mcp23s08.c_mcp23s08_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcp23s08 = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@MCP_INTF = common dso_local global i32 0, align 4
@MCP_INTCAP = common dso_local global i32 0, align 4
@MCP_INTCON = common dso_local global i32 0, align 4
@MCP_DEFVAL = common dso_local global i32 0, align 4
@MCP_GPIO = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"intcap 0x%04X intf 0x%04X gpio_orig 0x%04X gpio 0x%04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mcp23s08_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp23s08_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mcp23s08*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.mcp23s08*
  store %struct.mcp23s08* %22, %struct.mcp23s08** %6, align 8
  %23 = load %struct.mcp23s08*, %struct.mcp23s08** %6, align 8
  %24 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %23, i32 0, i32 3
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.mcp23s08*, %struct.mcp23s08** %6, align 8
  %27 = load i32, i32* @MCP_INTF, align 4
  %28 = call i64 @mcp_read(%struct.mcp23s08* %26, i32 %27, i32* %9)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %205

31:                                               ; preds = %2
  %32 = load %struct.mcp23s08*, %struct.mcp23s08** %6, align 8
  %33 = load i32, i32* @MCP_INTCAP, align 4
  %34 = call i64 @mcp_read(%struct.mcp23s08* %32, i32 %33, i32* %7)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %205

37:                                               ; preds = %31
  %38 = load %struct.mcp23s08*, %struct.mcp23s08** %6, align 8
  %39 = load i32, i32* @MCP_INTCON, align 4
  %40 = call i64 @mcp_read(%struct.mcp23s08* %38, i32 %39, i32* %8)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %205

43:                                               ; preds = %37
  %44 = load %struct.mcp23s08*, %struct.mcp23s08** %6, align 8
  %45 = load i32, i32* @MCP_DEFVAL, align 4
  %46 = call i64 @mcp_read(%struct.mcp23s08* %44, i32 %45, i32* %14)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %205

49:                                               ; preds = %43
  %50 = load %struct.mcp23s08*, %struct.mcp23s08** %6, align 8
  %51 = load i32, i32* @MCP_GPIO, align 4
  %52 = call i64 @mcp_read(%struct.mcp23s08* %50, i32 %51, i32* %11)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %205

55:                                               ; preds = %49
  %56 = load %struct.mcp23s08*, %struct.mcp23s08** %6, align 8
  %57 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.mcp23s08*, %struct.mcp23s08** %6, align 8
  %61 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.mcp23s08*, %struct.mcp23s08** %6, align 8
  %63 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %62, i32 0, i32 3
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %68, i32* %3, align 4
  br label %210

69:                                               ; preds = %55
  %70 = load %struct.mcp23s08*, %struct.mcp23s08** %6, align 8
  %71 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75, i32 %76, i32 %77)
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %200, %69
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.mcp23s08*, %struct.mcp23s08** %6, align 8
  %82 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %80, %84
  br i1 %85, label %86, label %203

86:                                               ; preds = %79
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @BIT(i32 %88)
  %90 = and i32 %87, %89
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %91, 8
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 255, i32* %13, align 4
  br label %106

97:                                               ; preds = %93, %86
  %98 = load i32, i32* %10, align 4
  %99 = icmp sge i32 %98, 8
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 65280, i32* %13, align 4
  br label %105

104:                                              ; preds = %100, %97
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %104, %103
  br label %106

106:                                              ; preds = %105, %96
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @BIT(i32 %109)
  %111 = and i32 %108, %110
  %112 = and i32 %107, %111
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @BIT(i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = and i32 %115, %116
  %118 = and i32 %113, %117
  %119 = icmp ne i32 %112, %118
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @BIT(i32 %121)
  %123 = load i32, i32* %11, align 4
  %124 = and i32 %122, %123
  store i32 %124, i32* %20, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @BIT(i32 %125)
  %127 = load i32, i32* %12, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @BIT(i32 %129)
  %131 = load i32, i32* %11, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %128, %132
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %18, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @BIT(i32 %135)
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %106
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @BIT(i32 %141)
  %143 = load i32, i32* %11, align 4
  %144 = and i32 %142, %143
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @BIT(i32 %145)
  %147 = load i32, i32* %14, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %144, %148
  br label %150

150:                                              ; preds = %140, %106
  %151 = phi i1 [ false, %106 ], [ %149, %140 ]
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %19, align 4
  %153 = load i32, i32* %18, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %17, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %155, %150
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @BIT(i32 %159)
  %161 = load %struct.mcp23s08*, %struct.mcp23s08** %6, align 8
  %162 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %160, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %158
  %167 = load i32, i32* %20, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %189, label %169

169:                                              ; preds = %166, %158, %155
  %170 = load i32, i32* %18, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %17, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %172, %169
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @BIT(i32 %176)
  %178 = load %struct.mcp23s08*, %struct.mcp23s08** %6, align 8
  %179 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %177, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %175
  %184 = load i32, i32* %20, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183, %175, %172
  %187 = load i32, i32* %19, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %186, %183, %166
  %190 = load %struct.mcp23s08*, %struct.mcp23s08** %6, align 8
  %191 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @irq_find_mapping(i32 %194, i32 %195)
  store i32 %196, i32* %15, align 4
  %197 = load i32, i32* %15, align 4
  %198 = call i32 @handle_nested_irq(i32 %197)
  br label %199

199:                                              ; preds = %189, %186
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %10, align 4
  br label %79

203:                                              ; preds = %79
  %204 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %204, i32* %3, align 4
  br label %210

205:                                              ; preds = %54, %48, %42, %36, %30
  %206 = load %struct.mcp23s08*, %struct.mcp23s08** %6, align 8
  %207 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %206, i32 0, i32 3
  %208 = call i32 @mutex_unlock(i32* %207)
  %209 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %205, %203, %67
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @mcp_read(%struct.mcp23s08*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @handle_nested_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
