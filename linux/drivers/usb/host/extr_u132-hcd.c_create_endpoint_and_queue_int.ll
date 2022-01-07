; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_create_endpoint_and_queue_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_create_endpoint_and_queue_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u132 = type { i32, %struct.u132_ring*, %struct.u132_endp** }
%struct.u132_ring = type { i32, %struct.u132_endp* }
%struct.u132_endp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i64, %struct.urb**, i64, i64, i32, %struct.TYPE_3__*, %struct.u132*, i64, i64, i64, i32, %struct.u132_ring*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.u132_endp* }
%struct.u132_udev = type { i32*, i32*, i32 }
%struct.urb = type { i32, %struct.u132*, i32, %struct.TYPE_3__* }
%struct.usb_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@u132_hcd_endp_work_scheduler = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ENDP_QUEUE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*, %struct.u132_udev*, %struct.urb*, %struct.usb_device*, i32, i32, i32, i32)* @create_endpoint_and_queue_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_endpoint_and_queue_int(%struct.u132* %0, %struct.u132_udev* %1, %struct.urb* %2, %struct.usb_device* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.u132*, align 8
  %11 = alloca %struct.u132_udev*, align 8
  %12 = alloca %struct.urb*, align 8
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.u132_ring*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.u132_endp*, align 8
  store %struct.u132* %0, %struct.u132** %10, align 8
  store %struct.u132_udev* %1, %struct.u132_udev** %11, align 8
  store %struct.urb* %2, %struct.urb** %12, align 8
  store %struct.usb_device* %3, %struct.usb_device** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = call %struct.u132_endp* @kmalloc(i32 144, i32 %23)
  store %struct.u132_endp* %24, %struct.u132_endp** %22, align 8
  %25 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %26 = icmp ne %struct.u132_endp* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %8
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %238

30:                                               ; preds = %8
  %31 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %32 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %31, i32 0, i32 9
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %36 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %35, i32 0, i32 9
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %19, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.u132*, %struct.u132** %10, align 8
  %41 = call i32 @u132_to_hcd(%struct.u132* %40)
  %42 = load %struct.urb*, %struct.urb** %12, align 8
  %43 = call i32 @usb_hcd_link_urb_to_ep(i32 %41, %struct.urb* %42)
  store i32 %43, i32* %20, align 4
  %44 = load i32, i32* %20, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %30
  %47 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %48 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %19, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %53 = call i32 @kfree(%struct.u132_endp* %52)
  %54 = load i32, i32* %20, align 4
  store i32 %54, i32* %9, align 4
  br label %238

55:                                               ; preds = %30
  %56 = load %struct.u132*, %struct.u132** %10, align 8
  %57 = getelementptr inbounds %struct.u132, %struct.u132* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  store i32 %59, i32* %21, align 4
  %60 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %61 = load %struct.u132*, %struct.u132** %10, align 8
  %62 = getelementptr inbounds %struct.u132, %struct.u132* %61, i32 0, i32 2
  %63 = load %struct.u132_endp**, %struct.u132_endp*** %62, align 8
  %64 = load i32, i32* %21, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.u132_endp*, %struct.u132_endp** %63, i64 %66
  store %struct.u132_endp* %60, %struct.u132_endp** %67, align 8
  %68 = load %struct.urb*, %struct.urb** %12, align 8
  %69 = getelementptr inbounds %struct.urb, %struct.urb* %68, i32 0, i32 3
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store %struct.u132_endp* %60, %struct.u132_endp** %71, align 8
  %72 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %73 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %72, i32 0, i32 23
  %74 = load i32, i32* @u132_hcd_endp_work_scheduler, align 4
  %75 = call i32 @INIT_DELAYED_WORK(i32* %73, i32 %74)
  %76 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %77 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %76, i32 0, i32 22
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.u132*, %struct.u132** %10, align 8
  %80 = getelementptr inbounds %struct.u132, %struct.u132* %79, i32 0, i32 1
  %81 = load %struct.u132_ring*, %struct.u132_ring** %80, align 8
  %82 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %81, i64 0
  %83 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %84 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %83, i32 0, i32 21
  store %struct.u132_ring* %82, %struct.u132_ring** %84, align 8
  store %struct.u132_ring* %82, %struct.u132_ring** %18, align 8
  %85 = load %struct.u132_ring*, %struct.u132_ring** %18, align 8
  %86 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %85, i32 0, i32 1
  %87 = load %struct.u132_endp*, %struct.u132_endp** %86, align 8
  %88 = icmp ne %struct.u132_endp* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %55
  %90 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %91 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %90, i32 0, i32 20
  %92 = load %struct.u132_ring*, %struct.u132_ring** %18, align 8
  %93 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %92, i32 0, i32 1
  %94 = load %struct.u132_endp*, %struct.u132_endp** %93, align 8
  %95 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %94, i32 0, i32 20
  %96 = call i32 @list_add_tail(i32* %91, i32* %95)
  br label %104

97:                                               ; preds = %55
  %98 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %99 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %98, i32 0, i32 20
  %100 = call i32 @INIT_LIST_HEAD(i32* %99)
  %101 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %102 = load %struct.u132_ring*, %struct.u132_ring** %18, align 8
  %103 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %102, i32 0, i32 1
  store %struct.u132_endp* %101, %struct.u132_endp** %103, align 8
  br label %104

104:                                              ; preds = %97, %89
  %105 = load %struct.u132_ring*, %struct.u132_ring** %18, align 8
  %106 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  %109 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %110 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %109, i32 0, i32 19
  store i64 0, i64* %110, align 8
  %111 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %112 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %111, i32 0, i32 18
  store i64 0, i64* %112, align 8
  %113 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %114 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %113, i32 0, i32 17
  store i64 0, i64* %114, align 8
  %115 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %116 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = load i32, i32* %21, align 4
  %118 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %119 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.u132*, %struct.u132** %10, align 8
  %121 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %122 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %121, i32 0, i32 16
  store %struct.u132* %120, %struct.u132** %122, align 8
  %123 = load %struct.urb*, %struct.urb** %12, align 8
  %124 = getelementptr inbounds %struct.urb, %struct.urb* %123, i32 0, i32 3
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %127 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %126, i32 0, i32 15
  store %struct.TYPE_3__* %125, %struct.TYPE_3__** %127, align 8
  %128 = load %struct.urb*, %struct.urb** %12, align 8
  %129 = getelementptr inbounds %struct.urb, %struct.urb* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @usb_pipetype(i32 %130)
  %132 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %133 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %132, i32 0, i32 14
  store i32 %131, i32* %133, align 8
  %134 = load %struct.u132*, %struct.u132** %10, align 8
  %135 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %136 = call i32 @u132_endp_init_kref(%struct.u132* %134, %struct.u132_endp* %135)
  %137 = load %struct.urb*, %struct.urb** %12, align 8
  %138 = getelementptr inbounds %struct.urb, %struct.urb* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @usb_pipein(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %104
  %143 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %144 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %143, i32 0, i32 2
  store i32 2, i32* %144, align 8
  %145 = load %struct.u132_udev*, %struct.u132_udev** %11, align 8
  %146 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @usb_settoggle(i32 %147, i32 %148, i32 0, i32 0)
  %150 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %151 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %150, i32 0, i32 3
  store i32 1, i32* %151, align 4
  %152 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %153 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %152, i32 0, i32 4
  store i32 0, i32* %153, align 8
  %154 = load i32, i32* %21, align 4
  %155 = load %struct.u132_udev*, %struct.u132_udev** %11, align 8
  %156 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %154, i32* %160, align 4
  %161 = load %struct.u132*, %struct.u132** %10, align 8
  %162 = load %struct.u132_udev*, %struct.u132_udev** %11, align 8
  %163 = call i32 @u132_udev_get_kref(%struct.u132* %161, %struct.u132_udev* %162)
  br label %186

164:                                              ; preds = %104
  %165 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %166 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %165, i32 0, i32 2
  store i32 2, i32* %166, align 8
  %167 = load %struct.u132_udev*, %struct.u132_udev** %11, align 8
  %168 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @usb_settoggle(i32 %169, i32 %170, i32 1, i32 0)
  %172 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %173 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %172, i32 0, i32 3
  store i32 0, i32* %173, align 4
  %174 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %175 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %174, i32 0, i32 4
  store i32 1, i32* %175, align 8
  %176 = load i32, i32* %21, align 4
  %177 = load %struct.u132_udev*, %struct.u132_udev** %11, align 8
  %178 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %176, i32* %182, align 4
  %183 = load %struct.u132*, %struct.u132** %10, align 8
  %184 = load %struct.u132_udev*, %struct.u132_udev** %11, align 8
  %185 = call i32 @u132_udev_get_kref(%struct.u132* %183, %struct.u132_udev* %184)
  br label %186

186:                                              ; preds = %164, %142
  %187 = load %struct.u132*, %struct.u132** %10, align 8
  %188 = load %struct.urb*, %struct.urb** %12, align 8
  %189 = getelementptr inbounds %struct.urb, %struct.urb* %188, i32 0, i32 1
  store %struct.u132* %187, %struct.u132** %189, align 8
  %190 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %191 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %190, i32 0, i32 0
  store i32 1, i32* %191, align 8
  %192 = load i64, i64* @jiffies, align 8
  %193 = load %struct.urb*, %struct.urb** %12, align 8
  %194 = getelementptr inbounds %struct.urb, %struct.urb* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i64 @msecs_to_jiffies(i32 %195)
  %197 = add nsw i64 %192, %196
  %198 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %199 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %198, i32 0, i32 13
  store i64 %197, i64* %199, align 8
  %200 = load i32, i32* %16, align 4
  %201 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %202 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %201, i32 0, i32 5
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* %14, align 4
  %204 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %205 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %204, i32 0, i32 6
  store i32 %203, i32* %205, align 8
  %206 = load i32, i32* %15, align 4
  %207 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %208 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %207, i32 0, i32 7
  store i32 %206, i32* %208, align 4
  %209 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %210 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %209, i32 0, i32 8
  store i32 1, i32* %210, align 8
  %211 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %212 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %211, i32 0, i32 10
  store i64 0, i64* %212, align 8
  %213 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %214 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %213, i32 0, i32 12
  store i64 0, i64* %214, align 8
  %215 = load %struct.urb*, %struct.urb** %12, align 8
  %216 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %217 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %216, i32 0, i32 11
  %218 = load %struct.urb**, %struct.urb*** %217, align 8
  %219 = load i64, i64* @ENDP_QUEUE_MASK, align 8
  %220 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %221 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %220, i32 0, i32 10
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %222, 1
  store i64 %223, i64* %221, align 8
  %224 = and i64 %219, %222
  %225 = getelementptr inbounds %struct.urb*, %struct.urb** %218, i64 %224
  store %struct.urb* %215, %struct.urb** %225, align 8
  %226 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %227 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %226, i32 0, i32 9
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load i64, i64* %19, align 8
  %230 = call i32 @spin_unlock_irqrestore(i32* %228, i64 %229)
  %231 = load %struct.u132*, %struct.u132** %10, align 8
  %232 = load %struct.u132_endp*, %struct.u132_endp** %22, align 8
  %233 = load %struct.urb*, %struct.urb** %12, align 8
  %234 = getelementptr inbounds %struct.urb, %struct.urb* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i64 @msecs_to_jiffies(i32 %235)
  %237 = call i32 @u132_endp_queue_work(%struct.u132* %231, %struct.u132_endp* %232, i64 %236)
  store i32 0, i32* %9, align 4
  br label %238

238:                                              ; preds = %186, %46, %27
  %239 = load i32, i32* %9, align 4
  ret i32 %239
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

declare dso_local i32 @usb_pipetype(i32) #1

declare dso_local i32 @u132_endp_init_kref(%struct.u132*, %struct.u132_endp*) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usb_settoggle(i32, i32, i32, i32) #1

declare dso_local i32 @u132_udev_get_kref(%struct.u132*, %struct.u132_udev*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @u132_endp_queue_work(%struct.u132*, %struct.u132_endp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
