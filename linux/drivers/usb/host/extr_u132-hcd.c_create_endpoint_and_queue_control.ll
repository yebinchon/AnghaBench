; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_create_endpoint_and_queue_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_create_endpoint_and_queue_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u132 = type { i32, %struct.u132_udev*, %struct.TYPE_5__*, %struct.u132_ring*, %struct.u132_endp** }
%struct.u132_udev = type { i32*, i32*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.u132_ring = type { i32, %struct.u132_endp* }
%struct.u132_endp = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i64, %struct.urb**, i64, i8*, %struct.TYPE_4__*, %struct.u132*, i64, i64, i64, i64, i32, %struct.u132_ring*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.u132_endp* }
%struct.urb = type { %struct.u132*, i32, %struct.TYPE_4__* }
%struct.usb_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@u132_hcd_endp_work_scheduler = common dso_local global i32 0, align 4
@ENDP_QUEUE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*, %struct.urb*, %struct.usb_device*, i32, i32, i32)* @create_endpoint_and_queue_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_endpoint_and_queue_control(%struct.u132* %0, %struct.urb* %1, %struct.usb_device* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.u132*, align 8
  %9 = alloca %struct.urb*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.u132_ring*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.u132_endp*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.u132_udev*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.u132_udev*, align 8
  store %struct.u132* %0, %struct.u132** %8, align 8
  store %struct.urb* %1, %struct.urb** %9, align 8
  store %struct.usb_device* %2, %struct.usb_device** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call %struct.u132_endp* @kmalloc(i32 136, i32 %23)
  store %struct.u132_endp* %24, %struct.u132_endp** %18, align 8
  %25 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %26 = icmp ne %struct.u132_endp* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %6
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %299

30:                                               ; preds = %6
  %31 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %32 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %36 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %15, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.u132*, %struct.u132** %8, align 8
  %41 = call i32 @u132_to_hcd(%struct.u132* %40)
  %42 = load %struct.urb*, %struct.urb** %9, align 8
  %43 = call i32 @usb_hcd_link_urb_to_ep(i32 %41, %struct.urb* %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %30
  %47 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %48 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %15, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %53 = call i32 @kfree(%struct.u132_endp* %52)
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %7, align 4
  br label %299

55:                                               ; preds = %30
  %56 = load %struct.u132*, %struct.u132** %8, align 8
  %57 = getelementptr inbounds %struct.u132, %struct.u132* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  store i32 %59, i32* %17, align 4
  %60 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %61 = load %struct.u132*, %struct.u132** %8, align 8
  %62 = getelementptr inbounds %struct.u132, %struct.u132* %61, i32 0, i32 4
  %63 = load %struct.u132_endp**, %struct.u132_endp*** %62, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.u132_endp*, %struct.u132_endp** %63, i64 %66
  store %struct.u132_endp* %60, %struct.u132_endp** %67, align 8
  %68 = load %struct.urb*, %struct.urb** %9, align 8
  %69 = getelementptr inbounds %struct.urb, %struct.urb* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store %struct.u132_endp* %60, %struct.u132_endp** %71, align 8
  %72 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %73 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %72, i32 0, i32 21
  %74 = load i32, i32* @u132_hcd_endp_work_scheduler, align 4
  %75 = call i32 @INIT_DELAYED_WORK(i32* %73, i32 %74)
  %76 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %77 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %76, i32 0, i32 20
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.u132*, %struct.u132** %8, align 8
  %80 = getelementptr inbounds %struct.u132, %struct.u132* %79, i32 0, i32 3
  %81 = load %struct.u132_ring*, %struct.u132_ring** %80, align 8
  %82 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %81, i64 0
  %83 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %84 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %83, i32 0, i32 19
  store %struct.u132_ring* %82, %struct.u132_ring** %84, align 8
  store %struct.u132_ring* %82, %struct.u132_ring** %14, align 8
  %85 = load %struct.u132_ring*, %struct.u132_ring** %14, align 8
  %86 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %85, i32 0, i32 1
  %87 = load %struct.u132_endp*, %struct.u132_endp** %86, align 8
  %88 = icmp ne %struct.u132_endp* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %55
  %90 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %91 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %90, i32 0, i32 18
  %92 = load %struct.u132_ring*, %struct.u132_ring** %14, align 8
  %93 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %92, i32 0, i32 1
  %94 = load %struct.u132_endp*, %struct.u132_endp** %93, align 8
  %95 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %94, i32 0, i32 18
  %96 = call i32 @list_add_tail(i32* %91, i32* %95)
  br label %104

97:                                               ; preds = %55
  %98 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %99 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %98, i32 0, i32 18
  %100 = call i32 @INIT_LIST_HEAD(i32* %99)
  %101 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %102 = load %struct.u132_ring*, %struct.u132_ring** %14, align 8
  %103 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %102, i32 0, i32 1
  store %struct.u132_endp* %101, %struct.u132_endp** %103, align 8
  br label %104

104:                                              ; preds = %97, %89
  %105 = load %struct.u132_ring*, %struct.u132_ring** %14, align 8
  %106 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  %109 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %110 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %109, i32 0, i32 17
  store i64 0, i64* %110, align 8
  %111 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %112 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %111, i32 0, i32 16
  store i64 0, i64* %112, align 8
  %113 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %114 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %113, i32 0, i32 15
  store i64 0, i64* %114, align 8
  %115 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %116 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %115, i32 0, i32 14
  store i64 0, i64* %116, align 8
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %119 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.u132*, %struct.u132** %8, align 8
  %121 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %122 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %121, i32 0, i32 13
  store %struct.u132* %120, %struct.u132** %122, align 8
  %123 = load %struct.urb*, %struct.urb** %9, align 8
  %124 = getelementptr inbounds %struct.urb, %struct.urb* %123, i32 0, i32 2
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %127 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %126, i32 0, i32 12
  store %struct.TYPE_4__* %125, %struct.TYPE_4__** %127, align 8
  %128 = load %struct.u132*, %struct.u132** %8, align 8
  %129 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %130 = call i32 @u132_endp_init_kref(%struct.u132* %128, %struct.u132_endp* %129)
  %131 = load %struct.u132*, %struct.u132** %8, align 8
  %132 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %133 = call i32 @u132_endp_get_kref(%struct.u132* %131, %struct.u132_endp* %132)
  %134 = load i32, i32* %11, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %218

136:                                              ; preds = %104
  %137 = load %struct.u132*, %struct.u132** %8, align 8
  %138 = getelementptr inbounds %struct.u132, %struct.u132* %137, i32 0, i32 2
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %19, align 4
  %145 = load %struct.u132*, %struct.u132** %8, align 8
  %146 = getelementptr inbounds %struct.u132, %struct.u132* %145, i32 0, i32 1
  %147 = load %struct.u132_udev*, %struct.u132_udev** %146, align 8
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %147, i64 %149
  store %struct.u132_udev* %150, %struct.u132_udev** %20, align 8
  %151 = load i32, i32* %19, align 4
  %152 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %153 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %156 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %159 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  %160 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %161 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %160, i32 0, i32 4
  store i32 1, i32* %161, align 8
  %162 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %163 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %162, i32 0, i32 5
  store i32 1, i32* %163, align 4
  %164 = load %struct.urb*, %struct.urb** %9, align 8
  %165 = getelementptr inbounds %struct.urb, %struct.urb* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i8* @usb_pipetype(i32 %166)
  %168 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %169 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %168, i32 0, i32 11
  store i8* %167, i8** %169, align 8
  %170 = load %struct.u132*, %struct.u132** %8, align 8
  %171 = load %struct.u132_udev*, %struct.u132_udev** %20, align 8
  %172 = call i32 @u132_udev_init_kref(%struct.u132* %170, %struct.u132_udev* %171)
  %173 = load %struct.u132*, %struct.u132** %8, align 8
  %174 = load %struct.u132_udev*, %struct.u132_udev** %20, align 8
  %175 = call i32 @u132_udev_get_kref(%struct.u132* %173, %struct.u132_udev* %174)
  %176 = load i32, i32* %17, align 4
  %177 = load %struct.u132_udev*, %struct.u132_udev** %20, align 8
  %178 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %176, i32* %182, align 4
  %183 = load i32, i32* %17, align 4
  %184 = load %struct.u132_udev*, %struct.u132_udev** %20, align 8
  %185 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %183, i32* %189, align 4
  %190 = load %struct.u132*, %struct.u132** %8, align 8
  %191 = load %struct.urb*, %struct.urb** %9, align 8
  %192 = getelementptr inbounds %struct.urb, %struct.urb* %191, i32 0, i32 0
  store %struct.u132* %190, %struct.u132** %192, align 8
  %193 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %194 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %193, i32 0, i32 6
  store i32 1, i32* %194, align 8
  %195 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %196 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %195, i32 0, i32 8
  store i64 0, i64* %196, align 8
  %197 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %198 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %197, i32 0, i32 10
  store i64 0, i64* %198, align 8
  %199 = load %struct.urb*, %struct.urb** %9, align 8
  %200 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %201 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %200, i32 0, i32 9
  %202 = load %struct.urb**, %struct.urb*** %201, align 8
  %203 = load i64, i64* @ENDP_QUEUE_MASK, align 8
  %204 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %205 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %204, i32 0, i32 8
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %206, 1
  store i64 %207, i64* %205, align 8
  %208 = and i64 %203, %206
  %209 = getelementptr inbounds %struct.urb*, %struct.urb** %202, i64 %208
  store %struct.urb* %199, %struct.urb** %209, align 8
  %210 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %211 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %210, i32 0, i32 7
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i64, i64* %15, align 8
  %214 = call i32 @spin_unlock_irqrestore(i32* %212, i64 %213)
  %215 = load %struct.u132*, %struct.u132** %8, align 8
  %216 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %217 = call i32 @u132_endp_queue_work(%struct.u132* %215, %struct.u132_endp* %216, i32 0)
  store i32 0, i32* %7, align 4
  br label %299

218:                                              ; preds = %104
  %219 = load %struct.u132*, %struct.u132** %8, align 8
  %220 = getelementptr inbounds %struct.u132, %struct.u132* %219, i32 0, i32 2
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %220, align 8
  %222 = load i32, i32* %11, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %21, align 4
  %227 = load %struct.u132*, %struct.u132** %8, align 8
  %228 = getelementptr inbounds %struct.u132, %struct.u132* %227, i32 0, i32 1
  %229 = load %struct.u132_udev*, %struct.u132_udev** %228, align 8
  %230 = load i32, i32* %21, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %229, i64 %231
  store %struct.u132_udev* %232, %struct.u132_udev** %22, align 8
  %233 = load i32, i32* %21, align 4
  %234 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %235 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 4
  %236 = load i32, i32* %11, align 4
  %237 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %238 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 8
  %239 = load i32, i32* %12, align 4
  %240 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %241 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %240, i32 0, i32 3
  store i32 %239, i32* %241, align 4
  %242 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %243 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %242, i32 0, i32 4
  store i32 1, i32* %243, align 8
  %244 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %245 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %244, i32 0, i32 5
  store i32 1, i32* %245, align 4
  %246 = load %struct.urb*, %struct.urb** %9, align 8
  %247 = getelementptr inbounds %struct.urb, %struct.urb* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = call i8* @usb_pipetype(i32 %248)
  %250 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %251 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %250, i32 0, i32 11
  store i8* %249, i8** %251, align 8
  %252 = load %struct.u132*, %struct.u132** %8, align 8
  %253 = load %struct.u132_udev*, %struct.u132_udev** %22, align 8
  %254 = call i32 @u132_udev_get_kref(%struct.u132* %252, %struct.u132_udev* %253)
  %255 = load %struct.u132_udev*, %struct.u132_udev** %22, align 8
  %256 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %255, i32 0, i32 2
  store i32 2, i32* %256, align 8
  %257 = load i32, i32* %17, align 4
  %258 = load %struct.u132_udev*, %struct.u132_udev** %22, align 8
  %259 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  store i32 %257, i32* %263, align 4
  %264 = load i32, i32* %17, align 4
  %265 = load %struct.u132_udev*, %struct.u132_udev** %22, align 8
  %266 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %12, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  store i32 %264, i32* %270, align 4
  %271 = load %struct.u132*, %struct.u132** %8, align 8
  %272 = load %struct.urb*, %struct.urb** %9, align 8
  %273 = getelementptr inbounds %struct.urb, %struct.urb* %272, i32 0, i32 0
  store %struct.u132* %271, %struct.u132** %273, align 8
  %274 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %275 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %274, i32 0, i32 6
  store i32 1, i32* %275, align 8
  %276 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %277 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %276, i32 0, i32 8
  store i64 0, i64* %277, align 8
  %278 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %279 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %278, i32 0, i32 10
  store i64 0, i64* %279, align 8
  %280 = load %struct.urb*, %struct.urb** %9, align 8
  %281 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %282 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %281, i32 0, i32 9
  %283 = load %struct.urb**, %struct.urb*** %282, align 8
  %284 = load i64, i64* @ENDP_QUEUE_MASK, align 8
  %285 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %286 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %285, i32 0, i32 8
  %287 = load i64, i64* %286, align 8
  %288 = add nsw i64 %287, 1
  store i64 %288, i64* %286, align 8
  %289 = and i64 %284, %287
  %290 = getelementptr inbounds %struct.urb*, %struct.urb** %283, i64 %289
  store %struct.urb* %280, %struct.urb** %290, align 8
  %291 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %292 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %291, i32 0, i32 7
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = load i64, i64* %15, align 8
  %295 = call i32 @spin_unlock_irqrestore(i32* %293, i64 %294)
  %296 = load %struct.u132*, %struct.u132** %8, align 8
  %297 = load %struct.u132_endp*, %struct.u132_endp** %18, align 8
  %298 = call i32 @u132_endp_queue_work(%struct.u132* %296, %struct.u132_endp* %297, i32 0)
  store i32 0, i32* %7, align 4
  br label %299

299:                                              ; preds = %218, %136, %46, %27
  %300 = load i32, i32* %7, align 4
  ret i32 %300
}

declare dso_local %struct.u132_endp* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_link_urb_to_ep(i32, %struct.urb*) #1

declare dso_local i32 @u132_to_hcd(%struct.u132*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.u132_endp*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @u132_endp_init_kref(%struct.u132*, %struct.u132_endp*) #1

declare dso_local i32 @u132_endp_get_kref(%struct.u132*, %struct.u132_endp*) #1

declare dso_local i8* @usb_pipetype(i32) #1

declare dso_local i32 @u132_udev_init_kref(%struct.u132*, %struct.u132_udev*) #1

declare dso_local i32 @u132_udev_get_kref(%struct.u132*, %struct.u132_udev*) #1

declare dso_local i32 @u132_endp_queue_work(%struct.u132*, %struct.u132_endp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
