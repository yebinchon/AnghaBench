; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_r8712_usb_read_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_r8712_usb_read_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intf_hdl = type { %struct.intf_priv* }
%struct.intf_priv = type { i64 }
%struct.urb = type { i32 }
%struct.recv_buf = type { i64, %struct.urb*, %struct.TYPE_8__*, i8*, i8*, i64, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.dvobj_priv = type { %struct.usb_device*, %struct._adapter* }
%struct.usb_device = type { i32 }
%struct._adapter = type { i32, %struct.TYPE_7__, i64, i64, %struct.recv_priv }
%struct.TYPE_7__ = type { i64 }
%struct.recv_priv = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@MAX_RECVBUF_SZ = common dso_local global i64 0, align 8
@RECVBUFF_ALIGN_SZ = common dso_local global i32 0, align 4
@r8712_usb_read_port_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_usb_read_port(%struct.intf_hdl* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intf_hdl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.urb*, align 8
  %16 = alloca %struct.recv_buf*, align 8
  %17 = alloca %struct.intf_priv*, align 8
  %18 = alloca %struct.dvobj_priv*, align 8
  %19 = alloca %struct._adapter*, align 8
  %20 = alloca %struct.recv_priv*, align 8
  %21 = alloca %struct.usb_device*, align 8
  store %struct.intf_hdl* %0, %struct.intf_hdl** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* @_SUCCESS, align 4
  store i32 %22, i32* %14, align 4
  store %struct.urb* null, %struct.urb** %15, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = bitcast i32* %23 to %struct.recv_buf*
  store %struct.recv_buf* %24, %struct.recv_buf** %16, align 8
  %25 = load %struct.intf_hdl*, %struct.intf_hdl** %6, align 8
  %26 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %25, i32 0, i32 0
  %27 = load %struct.intf_priv*, %struct.intf_priv** %26, align 8
  store %struct.intf_priv* %27, %struct.intf_priv** %17, align 8
  %28 = load %struct.intf_priv*, %struct.intf_priv** %17, align 8
  %29 = getelementptr inbounds %struct.intf_priv, %struct.intf_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.dvobj_priv*
  store %struct.dvobj_priv* %31, %struct.dvobj_priv** %18, align 8
  %32 = load %struct.dvobj_priv*, %struct.dvobj_priv** %18, align 8
  %33 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %32, i32 0, i32 1
  %34 = load %struct._adapter*, %struct._adapter** %33, align 8
  store %struct._adapter* %34, %struct._adapter** %19, align 8
  %35 = load %struct._adapter*, %struct._adapter** %19, align 8
  %36 = getelementptr inbounds %struct._adapter, %struct._adapter* %35, i32 0, i32 4
  store %struct.recv_priv* %36, %struct.recv_priv** %20, align 8
  %37 = load %struct.dvobj_priv*, %struct.dvobj_priv** %18, align 8
  %38 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %37, i32 0, i32 0
  %39 = load %struct.usb_device*, %struct.usb_device** %38, align 8
  store %struct.usb_device* %39, %struct.usb_device** %21, align 8
  %40 = load %struct._adapter*, %struct._adapter** %19, align 8
  %41 = getelementptr inbounds %struct._adapter, %struct._adapter* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %4
  %45 = load %struct._adapter*, %struct._adapter** %19, align 8
  %46 = getelementptr inbounds %struct._adapter, %struct._adapter* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %44
  %50 = load %struct._adapter*, %struct._adapter** %19, align 8
  %51 = getelementptr inbounds %struct._adapter, %struct._adapter* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %57 = icmp ne %struct.recv_buf* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %55, %49, %44, %4
  %59 = load i32, i32* @_FAIL, align 4
  store i32 %59, i32* %5, align 4
  br label %206

60:                                               ; preds = %55
  %61 = load %struct._adapter*, %struct._adapter** %19, align 8
  %62 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %63 = call i32 @r8712_init_recvbuf(%struct._adapter* %61, %struct.recv_buf* %62)
  %64 = load %struct.recv_priv*, %struct.recv_priv** %20, align 8
  %65 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %64, i32 0, i32 0
  %66 = call %struct.TYPE_8__* @skb_dequeue(i32* %65)
  %67 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %68 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %67, i32 0, i32 2
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %68, align 8
  %69 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %70 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %69, i32 0, i32 2
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = icmp ne %struct.TYPE_8__* %71, null
  br i1 %72, label %141, label %73

73:                                               ; preds = %60
  %74 = load %struct._adapter*, %struct._adapter** %19, align 8
  %75 = getelementptr inbounds %struct._adapter, %struct._adapter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* @MAX_RECVBUF_SZ, align 8
  %78 = load i32, i32* @RECVBUFF_ALIGN_SZ, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = call %struct.TYPE_8__* @netdev_alloc_skb(i32 %76, i64 %80)
  %82 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %83 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %82, i32 0, i32 2
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %83, align 8
  %84 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %85 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %84, i32 0, i32 2
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = icmp ne %struct.TYPE_8__* %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %73
  %89 = load i32, i32* @_FAIL, align 4
  store i32 %89, i32* %5, align 4
  br label %206

90:                                               ; preds = %73
  %91 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %92 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %91, i32 0, i32 2
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @RECVBUFF_ALIGN_SZ, align 4
  %99 = sub nsw i32 %98, 1
  %100 = and i32 %97, %99
  store i32 %100, i32* %13, align 4
  %101 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %102 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %101, i32 0, i32 2
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load i32, i32* @RECVBUFF_ALIGN_SZ, align 4
  %105 = load i32, i32* %13, align 4
  %106 = sub nsw i32 %104, %105
  %107 = call i32 @skb_reserve(%struct.TYPE_8__* %103, i32 %106)
  %108 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %109 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %108, i32 0, i32 2
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %114 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 8
  %115 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %116 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %115, i32 0, i32 2
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %121 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %120, i32 0, i32 5
  store i64 %119, i64* %121, align 8
  %122 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %123 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %122, i32 0, i32 2
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = call i8* @skb_tail_pointer(%struct.TYPE_8__* %124)
  %126 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %127 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %129 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %128, i32 0, i32 2
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = call i8* @skb_end_pointer(%struct.TYPE_8__* %130)
  %132 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %133 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  %134 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %135 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %134, i32 0, i32 2
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %140 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  br label %175

141:                                              ; preds = %60
  %142 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %143 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %142, i32 0, i32 2
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %148 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 8
  %149 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %150 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %149, i32 0, i32 2
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %155 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %154, i32 0, i32 5
  store i64 %153, i64* %155, align 8
  %156 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %157 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %156, i32 0, i32 2
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = call i8* @skb_tail_pointer(%struct.TYPE_8__* %158)
  %160 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %161 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %160, i32 0, i32 4
  store i8* %159, i8** %161, align 8
  %162 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %163 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %162, i32 0, i32 2
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = call i8* @skb_end_pointer(%struct.TYPE_8__* %164)
  %166 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %167 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %166, i32 0, i32 3
  store i8* %165, i8** %167, align 8
  %168 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %169 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %168, i32 0, i32 2
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %174 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %141, %90
  %176 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %177 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %176, i32 0, i32 1
  %178 = load %struct.urb*, %struct.urb** %177, align 8
  store %struct.urb* %178, %struct.urb** %15, align 8
  %179 = load %struct.dvobj_priv*, %struct.dvobj_priv** %18, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @ffaddr2pipehdl(%struct.dvobj_priv* %179, i32 %180)
  store i32 %181, i32* %10, align 4
  %182 = load %struct.urb*, %struct.urb** %15, align 8
  %183 = load %struct.usb_device*, %struct.usb_device** %21, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %186 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @MAX_RECVBUF_SZ, align 8
  %189 = load i32, i32* @r8712_usb_read_port_complete, align 4
  %190 = load %struct.recv_buf*, %struct.recv_buf** %16, align 8
  %191 = call i32 @usb_fill_bulk_urb(%struct.urb* %182, %struct.usb_device* %183, i32 %184, i64 %187, i64 %188, i32 %189, %struct.recv_buf* %190)
  %192 = load %struct.urb*, %struct.urb** %15, align 8
  %193 = load i32, i32* @GFP_ATOMIC, align 4
  %194 = call i32 @usb_submit_urb(%struct.urb* %192, i32 %193)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %175
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* @EPERM, align 4
  %200 = sub nsw i32 0, %199
  %201 = icmp ne i32 %198, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  %203 = load i32, i32* @_FAIL, align 4
  store i32 %203, i32* %14, align 4
  br label %204

204:                                              ; preds = %202, %197, %175
  %205 = load i32, i32* %14, align 4
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %204, %88, %58
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i32 @r8712_init_recvbuf(%struct._adapter*, %struct.recv_buf*) #1

declare dso_local %struct.TYPE_8__* @skb_dequeue(i32*) #1

declare dso_local %struct.TYPE_8__* @netdev_alloc_skb(i32, i64) #1

declare dso_local i32 @skb_reserve(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @skb_tail_pointer(%struct.TYPE_8__*) #1

declare dso_local i8* @skb_end_pointer(%struct.TYPE_8__*) #1

declare dso_local i32 @ffaddr2pipehdl(%struct.dvobj_priv*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, i32, i64, i64, i32, %struct.recv_buf*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
