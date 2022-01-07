; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_packetize_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_packetize_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32, i8*, i32, i32, i8*, i32, i64 }
%struct.list_head = type { i32 }
%struct.isp1760_qtd = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"buf is null, dma is %08lx len is %d\0A\00", align 1
@IN_PID = common dso_local global i64 0, align 8
@OUT_PID = common dso_local global i64 0, align 8
@SETUP_PID = common dso_local global i64 0, align 8
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.urb*, %struct.list_head*, i32)* @packetize_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packetize_urb(%struct.usb_hcd* %0, %struct.urb* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.isp1760_qtd*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.urb*, %struct.urb** %6, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %4
  %21 = load %struct.urb*, %struct.urb** %6, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %27 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.urb*, %struct.urb** %6, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.urb*, %struct.urb** %6, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %35)
  %37 = call i32 @WARN_ON(i32 1)
  br label %38

38:                                               ; preds = %25, %20, %4
  %39 = load %struct.urb*, %struct.urb** %6, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @usb_pipein(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* @IN_PID, align 8
  store i64 %45, i64* %13, align 8
  br label %48

46:                                               ; preds = %38
  %47 = load i64, i64* @OUT_PID, align 8
  store i64 %47, i64* %13, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = load %struct.urb*, %struct.urb** %6, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @usb_pipecontrol(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.urb*, %struct.urb** %6, align 8
  %57 = load i64, i64* @SETUP_PID, align 8
  %58 = call %struct.isp1760_qtd* @qtd_alloc(i32 %55, %struct.urb* %56, i64 %57)
  store %struct.isp1760_qtd* %58, %struct.isp1760_qtd** %9, align 8
  %59 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %9, align 8
  %60 = icmp ne %struct.isp1760_qtd* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %188

62:                                               ; preds = %54
  %63 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %9, align 8
  %64 = load %struct.urb*, %struct.urb** %6, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @qtd_fill(%struct.isp1760_qtd* %63, i8* %66, i32 4)
  %68 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %9, align 8
  %69 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %68, i32 0, i32 0
  %70 = load %struct.list_head*, %struct.list_head** %7, align 8
  %71 = call i32 @list_add_tail(i32* %69, %struct.list_head* %70)
  %72 = load %struct.urb*, %struct.urb** %6, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i64, i64* @IN_PID, align 8
  store i64 %77, i64* %13, align 8
  br label %78

78:                                               ; preds = %76, %62
  br label %79

79:                                               ; preds = %78, %48
  %80 = load %struct.urb*, %struct.urb** %6, align 8
  %81 = getelementptr inbounds %struct.urb, %struct.urb* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.urb*, %struct.urb** %6, align 8
  %84 = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.urb*, %struct.urb** %6, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @usb_pipeout(i32 %88)
  %90 = call i32 @usb_maxpacket(i32 %82, i32 %85, i32 %89)
  %91 = call i32 @max_packet(i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load %struct.urb*, %struct.urb** %6, align 8
  %93 = getelementptr inbounds %struct.urb, %struct.urb* %92, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %10, align 8
  %95 = load %struct.urb*, %struct.urb** %6, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %125, %79
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.urb*, %struct.urb** %6, align 8
  %101 = load i64, i64* %13, align 8
  %102 = call %struct.isp1760_qtd* @qtd_alloc(i32 %99, %struct.urb* %100, i64 %101)
  store %struct.isp1760_qtd* %102, %struct.isp1760_qtd** %9, align 8
  %103 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %9, align 8
  %104 = icmp ne %struct.isp1760_qtd* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %98
  br label %188

106:                                              ; preds = %98
  %107 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %9, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @qtd_fill(%struct.isp1760_qtd* %107, i8* %108, i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %9, align 8
  %112 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %111, i32 0, i32 0
  %113 = load %struct.list_head*, %struct.list_head** %7, align 8
  %114 = call i32 @list_add_tail(i32* %112, %struct.list_head* %113)
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %11, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i8*, i8** %10, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr i8, i8* %119, i64 %120
  store i8* %121, i8** %10, align 8
  %122 = load i32, i32* %11, align 4
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %106
  br label %126

125:                                              ; preds = %106
  br label %98

126:                                              ; preds = %124
  %127 = load %struct.urb*, %struct.urb** %6, align 8
  %128 = getelementptr inbounds %struct.urb, %struct.urb* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %187

131:                                              ; preds = %126
  store i32 0, i32* %15, align 4
  %132 = load %struct.urb*, %struct.urb** %6, align 8
  %133 = getelementptr inbounds %struct.urb, %struct.urb* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @usb_pipecontrol(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  store i32 1, i32* %15, align 4
  %138 = load i64, i64* %13, align 8
  %139 = load i64, i64* @IN_PID, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i64, i64* @OUT_PID, align 8
  store i64 %142, i64* %13, align 8
  br label %145

143:                                              ; preds = %137
  %144 = load i64, i64* @IN_PID, align 8
  store i64 %144, i64* %13, align 8
  br label %145

145:                                              ; preds = %143, %141
  br label %168

146:                                              ; preds = %131
  %147 = load %struct.urb*, %struct.urb** %6, align 8
  %148 = getelementptr inbounds %struct.urb, %struct.urb* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @usb_pipebulk(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %146
  %153 = load %struct.urb*, %struct.urb** %6, align 8
  %154 = getelementptr inbounds %struct.urb, %struct.urb* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @URB_ZERO_PACKET, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %152
  %160 = load %struct.urb*, %struct.urb** %6, align 8
  %161 = getelementptr inbounds %struct.urb, %struct.urb* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = srem i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %159
  store i32 1, i32* %15, align 4
  br label %167

167:                                              ; preds = %166, %159, %152, %146
  br label %168

168:                                              ; preds = %167, %145
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %186

171:                                              ; preds = %168
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.urb*, %struct.urb** %6, align 8
  %174 = load i64, i64* %13, align 8
  %175 = call %struct.isp1760_qtd* @qtd_alloc(i32 %172, %struct.urb* %173, i64 %174)
  store %struct.isp1760_qtd* %175, %struct.isp1760_qtd** %9, align 8
  %176 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %9, align 8
  %177 = icmp ne %struct.isp1760_qtd* %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %171
  br label %188

179:                                              ; preds = %171
  %180 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %9, align 8
  %181 = call i32 @qtd_fill(%struct.isp1760_qtd* %180, i8* null, i32 0)
  %182 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %9, align 8
  %183 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %182, i32 0, i32 0
  %184 = load %struct.list_head*, %struct.list_head** %7, align 8
  %185 = call i32 @list_add_tail(i32* %183, %struct.list_head* %184)
  br label %186

186:                                              ; preds = %179, %168
  br label %187

187:                                              ; preds = %186, %126
  br label %191

188:                                              ; preds = %178, %105, %61
  %189 = load %struct.list_head*, %struct.list_head** %7, align 8
  %190 = call i32 @qtd_list_free(%struct.list_head* %189)
  br label %191

191:                                              ; preds = %188, %187
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i64 @usb_pipecontrol(i32) #1

declare dso_local %struct.isp1760_qtd* @qtd_alloc(i32, %struct.urb*, i64) #1

declare dso_local i32 @qtd_fill(%struct.isp1760_qtd*, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @max_packet(i32) #1

declare dso_local i32 @usb_maxpacket(i32, i32, i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i64 @usb_pipebulk(i32) #1

declare dso_local i32 @qtd_list_free(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
