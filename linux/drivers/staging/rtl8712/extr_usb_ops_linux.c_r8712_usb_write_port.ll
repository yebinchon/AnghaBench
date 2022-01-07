; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_r8712_usb_write_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_r8712_usb_write_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intf_hdl = type { i64 }
%struct.urb = type { i32 }
%struct._adapter = type { %struct.TYPE_2__, i64, i64, %struct.xmit_priv, %struct.dvobj_priv }
%struct.TYPE_2__ = type { i64 }
%struct.xmit_priv = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dvobj_priv = type { i64, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.xmit_frame = type { i32*, i32, %struct.urb**, i64*, %struct.pkt_attrib }
%struct.pkt_attrib = type { i32 }

@_FAIL = common dso_local global i32 0, align 4
@NR_XMITBUFF = common dso_local global i32 0, align 4
@URB_NO_INTERRUPT = common dso_local global i32 0, align 4
@usb_write_port_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_usb_write_port(%struct.intf_hdl* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intf_hdl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.urb*, align 8
  %17 = alloca %struct._adapter*, align 8
  %18 = alloca %struct.dvobj_priv*, align 8
  %19 = alloca %struct.xmit_priv*, align 8
  %20 = alloca %struct.xmit_frame*, align 8
  %21 = alloca %struct.usb_device*, align 8
  %22 = alloca %struct.pkt_attrib*, align 8
  store %struct.intf_hdl* %0, %struct.intf_hdl** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.urb* null, %struct.urb** %16, align 8
  %23 = load %struct.intf_hdl*, %struct.intf_hdl** %6, align 8
  %24 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct._adapter*
  store %struct._adapter* %26, %struct._adapter** %17, align 8
  %27 = load %struct._adapter*, %struct._adapter** %17, align 8
  %28 = getelementptr inbounds %struct._adapter, %struct._adapter* %27, i32 0, i32 4
  store %struct.dvobj_priv* %28, %struct.dvobj_priv** %18, align 8
  %29 = load %struct._adapter*, %struct._adapter** %17, align 8
  %30 = getelementptr inbounds %struct._adapter, %struct._adapter* %29, i32 0, i32 3
  store %struct.xmit_priv* %30, %struct.xmit_priv** %19, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = bitcast i32* %31 to %struct.xmit_frame*
  store %struct.xmit_frame* %32, %struct.xmit_frame** %20, align 8
  %33 = load %struct.dvobj_priv*, %struct.dvobj_priv** %18, align 8
  %34 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %33, i32 0, i32 1
  %35 = load %struct.usb_device*, %struct.usb_device** %34, align 8
  store %struct.usb_device* %35, %struct.usb_device** %21, align 8
  %36 = load %struct.xmit_frame*, %struct.xmit_frame** %20, align 8
  %37 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %36, i32 0, i32 4
  store %struct.pkt_attrib* %37, %struct.pkt_attrib** %22, align 8
  %38 = load %struct._adapter*, %struct._adapter** %17, align 8
  %39 = getelementptr inbounds %struct._adapter, %struct._adapter* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %4
  %43 = load %struct._adapter*, %struct._adapter** %17, align 8
  %44 = getelementptr inbounds %struct._adapter, %struct._adapter* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load %struct._adapter*, %struct._adapter** %17, align 8
  %49 = getelementptr inbounds %struct._adapter, %struct._adapter* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47, %42, %4
  %54 = load i32, i32* @_FAIL, align 4
  store i32 %54, i32* %5, align 4
  br label %205

55:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %128, %55
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 8
  br i1 %58, label %59, label %131

59:                                               ; preds = %56
  %60 = load %struct.xmit_frame*, %struct.xmit_frame** %20, align 8
  %61 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %127, label %68

68:                                               ; preds = %59
  %69 = load %struct.xmit_priv*, %struct.xmit_priv** %19, align 8
  %70 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %69, i32 0, i32 1
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load %struct.xmit_priv*, %struct.xmit_priv** %19, align 8
  %74 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.xmit_frame*, %struct.xmit_frame** %20, align 8
  %78 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 1, i32* %82, align 4
  %83 = load %struct.pkt_attrib*, %struct.pkt_attrib** %22, align 8
  %84 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %102 [
    i32 1, label %86
    i32 2, label %86
    i32 4, label %91
    i32 5, label %91
    i32 6, label %96
    i32 7, label %96
    i32 0, label %101
    i32 3, label %101
  ]

86:                                               ; preds = %68, %68
  %87 = load %struct.xmit_priv*, %struct.xmit_priv** %19, align 8
  %88 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %107

91:                                               ; preds = %68, %68
  %92 = load %struct.xmit_priv*, %struct.xmit_priv** %19, align 8
  %93 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %107

96:                                               ; preds = %68, %68
  %97 = load %struct.xmit_priv*, %struct.xmit_priv** %19, align 8
  %98 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %107

101:                                              ; preds = %68, %68
  br label %102

102:                                              ; preds = %68, %101
  %103 = load %struct.xmit_priv*, %struct.xmit_priv** %19, align 8
  %104 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %102, %96, %91, %86
  %108 = load %struct.xmit_priv*, %struct.xmit_priv** %19, align 8
  %109 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %108, i32 0, i32 1
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.xmit_frame*, %struct.xmit_frame** %20, align 8
  %115 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %114, i32 0, i32 3
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store i64 %113, i64* %119, align 8
  %120 = load %struct.xmit_frame*, %struct.xmit_frame** %20, align 8
  %121 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %120, i32 0, i32 2
  %122 = load %struct.urb**, %struct.urb*** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.urb*, %struct.urb** %122, i64 %124
  %126 = load %struct.urb*, %struct.urb** %125, align 8
  store %struct.urb* %126, %struct.urb** %16, align 8
  br label %131

127:                                              ; preds = %59
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %56

131:                                              ; preds = %107, %56
  store i32 0, i32* %15, align 4
  %132 = load %struct.dvobj_priv*, %struct.dvobj_priv** %18, align 8
  %133 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %131
  %137 = load i32, i32* %8, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i32, i32* %8, align 4
  %141 = srem i32 %140, 512
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 1, i32* %15, align 4
  br label %144

144:                                              ; preds = %143, %139, %136
  br label %154

145:                                              ; preds = %131
  %146 = load i32, i32* %8, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load i32, i32* %8, align 4
  %150 = srem i32 %149, 64
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 1, i32* %15, align 4
  br label %153

153:                                              ; preds = %152, %148, %145
  br label %154

154:                                              ; preds = %153, %144
  %155 = load %struct.dvobj_priv*, %struct.dvobj_priv** %18, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @ffaddr2pipehdl(%struct.dvobj_priv* %155, i32 %156)
  store i32 %157, i32* %13, align 4
  %158 = load %struct.xmit_priv*, %struct.xmit_priv** %19, align 8
  %159 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @NR_XMITBUFF, align 4
  %162 = srem i32 %160, %161
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %154
  %165 = load i32, i32* @URB_NO_INTERRUPT, align 4
  %166 = xor i32 %165, -1
  %167 = load %struct.urb*, %struct.urb** %16, align 8
  %168 = getelementptr inbounds %struct.urb, %struct.urb* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %177

171:                                              ; preds = %154
  %172 = load i32, i32* @URB_NO_INTERRUPT, align 4
  %173 = load %struct.urb*, %struct.urb** %16, align 8
  %174 = getelementptr inbounds %struct.urb, %struct.urb* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %171, %164
  %178 = load i32, i32* %15, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 8
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %180, %177
  %184 = load %struct.urb*, %struct.urb** %16, align 8
  %185 = load %struct.usb_device*, %struct.usb_device** %21, align 8
  %186 = load i32, i32* %13, align 4
  %187 = load %struct.xmit_frame*, %struct.xmit_frame** %20, align 8
  %188 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* @usb_write_port_complete, align 4
  %192 = load %struct.xmit_frame*, %struct.xmit_frame** %20, align 8
  %193 = call i32 @usb_fill_bulk_urb(%struct.urb* %184, %struct.usb_device* %185, i32 %186, i32 %189, i32 %190, i32 %191, %struct.xmit_frame* %192)
  %194 = load %struct.urb*, %struct.urb** %16, align 8
  %195 = load i32, i32* @GFP_ATOMIC, align 4
  %196 = call i32 @usb_submit_urb(%struct.urb* %194, i32 %195)
  store i32 %196, i32* %12, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %183
  %200 = load i32, i32* @_SUCCESS, align 4
  store i32 %200, i32* %14, align 4
  br label %203

201:                                              ; preds = %183
  %202 = load i32, i32* @_FAIL, align 4
  store i32 %202, i32* %14, align 4
  br label %203

203:                                              ; preds = %201, %199
  %204 = load i32, i32* %14, align 4
  store i32 %204, i32* %5, align 4
  br label %205

205:                                              ; preds = %203, %53
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ffaddr2pipehdl(%struct.dvobj_priv*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, i32, i32, i32, i32, %struct.xmit_frame*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
