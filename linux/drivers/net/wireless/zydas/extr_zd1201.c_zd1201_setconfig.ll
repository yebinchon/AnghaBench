; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_setconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_setconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd1201 = type { %struct.TYPE_3__*, i32*, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.urb = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ZD1201_USB_RESREQ = common dso_local global i8 0, align 1
@zd1201_usbfree = common dso_local global i32 0, align 4
@ZD1201_USB_CMDREQ = common dso_local global i32 0, align 4
@ZD1201_CMDCODE_ACCESS = common dso_local global i32 0, align 4
@ZD1201_ACCESSBIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"wrong or no RID received\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd1201*, i32, i8*, i32, i32)* @zd1201_setconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_setconfig(%struct.zd1201* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.zd1201*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca %struct.urb*, align 8
  %17 = alloca i32, align 4
  store %struct.zd1201* %0, %struct.zd1201** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8 0, i8* %15, align 1
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @GFP_NOIO, align 4
  br label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %29 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %31 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  store i8 0, i8* %15, align 1
  br label %32

32:                                               ; preds = %139, %24
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %142

35:                                               ; preds = %32
  %36 = load i32, i32* %17, align 4
  %37 = call i8* @kmalloc(i32 16, i32 %36)
  store i8* %37, i8** %13, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %244

43:                                               ; preds = %35
  %44 = load i32, i32* %17, align 4
  %45 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %44)
  store %struct.urb* %45, %struct.urb** %16, align 8
  %46 = load %struct.urb*, %struct.urb** %16, align 8
  %47 = icmp ne %struct.urb* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @kfree(i8* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %244

53:                                               ; preds = %43
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @memset(i8* %54, i32 0, i32 16)
  %56 = load i32, i32* %10, align 4
  %57 = icmp sgt i32 %56, 12
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  br label %61

61:                                               ; preds = %59, %58
  %62 = phi i32 [ 12, %58 ], [ %60, %59 ]
  store i32 %62, i32* %14, align 4
  %63 = load i8, i8* @ZD1201_USB_RESREQ, align 1
  %64 = load i8*, i8** %13, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 %63, i8* %65, align 1
  %66 = load i8, i8* %15, align 1
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 %66, i8* %68, align 1
  %69 = load i8*, i8** %13, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %13, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 3
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %13, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %61
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, 2
  %81 = add nsw i32 %80, 1
  %82 = sdiv i32 %81, 2
  %83 = call i32 @cpu_to_le16(i32 %82)
  %84 = load i8*, i8** %13, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  %86 = bitcast i8* %85 to i32*
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @cpu_to_le16(i32 %87)
  %89 = load i8*, i8** %13, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 6
  %91 = bitcast i8* %90 to i32*
  store i32 %88, i32* %91, align 4
  %92 = load i8*, i8** %13, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sub nsw i32 %95, 4
  %97 = call i32 @memcpy(i8* %93, i8* %94, i32 %96)
  %98 = load i32, i32* %14, align 4
  %99 = sub nsw i32 %98, 4
  %100 = load i8*, i8** %9, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr i8, i8* %100, i64 %101
  store i8* %102, i8** %9, align 8
  br label %113

103:                                              ; preds = %61
  %104 = load i8*, i8** %13, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 4
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @memcpy(i8* %105, i8* %106, i32 %107)
  %109 = load i32, i32* %14, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr i8, i8* %110, i64 %111
  store i8* %112, i8** %9, align 8
  br label %113

113:                                              ; preds = %103, %78
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* %10, align 4
  %117 = load %struct.urb*, %struct.urb** %16, align 8
  %118 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %119 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %118, i32 0, i32 0
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %122 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %125 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @usb_sndbulkpipe(%struct.TYPE_3__* %123, i32 %126)
  %128 = load i8*, i8** %13, align 8
  %129 = load i32, i32* @zd1201_usbfree, align 4
  %130 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %131 = call i32 @usb_fill_bulk_urb(%struct.urb* %117, %struct.TYPE_3__* %120, i32 %127, i8* %128, i32 16, i32 %129, %struct.zd1201* %130)
  %132 = load %struct.urb*, %struct.urb** %16, align 8
  %133 = load i32, i32* %17, align 4
  %134 = call i32 @usb_submit_urb(%struct.urb* %132, i32 %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %113
  br label %238

138:                                              ; preds = %113
  br label %139

139:                                              ; preds = %138
  %140 = load i8, i8* %15, align 1
  %141 = add i8 %140, 1
  store i8 %141, i8* %15, align 1
  br label %32

142:                                              ; preds = %32
  %143 = load i32, i32* %17, align 4
  %144 = call i8* @kmalloc(i32 16, i32 %143)
  store i8* %144, i8** %13, align 8
  %145 = load i8*, i8** %13, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %6, align 4
  br label %244

150:                                              ; preds = %142
  %151 = load i32, i32* %17, align 4
  %152 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %151)
  store %struct.urb* %152, %struct.urb** %16, align 8
  %153 = load %struct.urb*, %struct.urb** %16, align 8
  %154 = icmp ne %struct.urb* %153, null
  br i1 %154, label %160, label %155

155:                                              ; preds = %150
  %156 = load i8*, i8** %13, align 8
  %157 = call i32 @kfree(i8* %156)
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %6, align 4
  br label %244

160:                                              ; preds = %150
  %161 = load i32, i32* @ZD1201_USB_CMDREQ, align 4
  %162 = call i32 @cpu_to_le32(i32 %161)
  %163 = load i8*, i8** %13, align 8
  %164 = bitcast i8* %163 to i32*
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @ZD1201_CMDCODE_ACCESS, align 4
  %166 = load i32, i32* @ZD1201_ACCESSBIT, align 4
  %167 = or i32 %165, %166
  %168 = call i32 @cpu_to_le16(i32 %167)
  %169 = load i8*, i8** %13, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 4
  %171 = bitcast i8* %170 to i32*
  store i32 %168, i32* %171, align 4
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @cpu_to_le16(i32 %172)
  %174 = load i8*, i8** %13, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 6
  %176 = bitcast i8* %175 to i32*
  store i32 %173, i32* %176, align 4
  %177 = call i32 @cpu_to_le16(i32 0)
  %178 = load i8*, i8** %13, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 8
  %180 = bitcast i8* %179 to i32*
  store i32 %177, i32* %180, align 4
  %181 = call i32 @cpu_to_le16(i32 0)
  %182 = load i8*, i8** %13, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 10
  %184 = bitcast i8* %183 to i32*
  store i32 %181, i32* %184, align 4
  %185 = load %struct.urb*, %struct.urb** %16, align 8
  %186 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %187 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %186, i32 0, i32 0
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %190 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %189, i32 0, i32 0
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %190, align 8
  %192 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %193 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @usb_sndbulkpipe(%struct.TYPE_3__* %191, i32 %194)
  %196 = load i8*, i8** %13, align 8
  %197 = load i32, i32* @zd1201_usbfree, align 4
  %198 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %199 = call i32 @usb_fill_bulk_urb(%struct.urb* %185, %struct.TYPE_3__* %188, i32 %195, i8* %196, i32 16, i32 %197, %struct.zd1201* %198)
  %200 = load %struct.urb*, %struct.urb** %16, align 8
  %201 = load i32, i32* %17, align 4
  %202 = call i32 @usb_submit_urb(%struct.urb* %200, i32 %201)
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %12, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %160
  br label %238

206:                                              ; preds = %160
  %207 = load i32, i32* %11, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %237

209:                                              ; preds = %206
  %210 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %211 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %214 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @wait_event_interruptible(i32 %212, i64 %215)
  %217 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %218 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %209
  %222 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %223 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 6
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @le16_to_cpu(i32 %226)
  %228 = load i32, i32* %8, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %221, %209
  %231 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %232 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %231, i32 0, i32 0
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = call i32 @dev_dbg(i32* %234, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %236

236:                                              ; preds = %230, %221
  br label %237

237:                                              ; preds = %236, %206
  store i32 0, i32* %6, align 4
  br label %244

238:                                              ; preds = %205, %137
  %239 = load i8*, i8** %13, align 8
  %240 = call i32 @kfree(i8* %239)
  %241 = load %struct.urb*, %struct.urb** %16, align 8
  %242 = call i32 @usb_free_urb(%struct.urb* %241)
  %243 = load i32, i32* %12, align 4
  store i32 %243, i32* %6, align 4
  br label %244

244:                                              ; preds = %238, %237, %155, %147, %48, %40
  %245 = load i32, i32* %6, align 4
  ret i32 %245
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.TYPE_3__*, i32, i8*, i32, i32, %struct.zd1201*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
