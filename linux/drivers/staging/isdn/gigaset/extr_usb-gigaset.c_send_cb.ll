; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_send_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_send_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, i64, %struct.cmdbuf_t*, i32, i64, i32*, i32, %struct.TYPE_2__ }
%struct.cmdbuf_t = type { i64, i64, i64, i64, i32*, %struct.cmdbuf_t* }
%struct.TYPE_2__ = type { %struct.usb_cardstate* }
%struct.usb_cardstate = type { i32, i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"send_cb: sent %u bytes, %u left\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"send_cb: send %d bytes\00", align 1
@gigaset_write_bulk_callback = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"could not submit urb (error %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*)* @send_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_cb(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  %3 = alloca %struct.cmdbuf_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_cardstate*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %8 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %9 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %8, i32 0, i32 3
  %10 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %9, align 8
  store %struct.cmdbuf_t* %10, %struct.cmdbuf_t** %3, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %14 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.usb_cardstate*, %struct.usb_cardstate** %15, align 8
  store %struct.usb_cardstate* %16, %struct.usb_cardstate** %7, align 8
  br label %17

17:                                               ; preds = %187, %1
  %18 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %19 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %91, label %22

22:                                               ; preds = %17
  %23 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %24 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %23, i32 0, i32 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %28 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %31 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 8
  %36 = load i32, i32* @DEBUG_OUTPUT, align 4
  %37 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %38 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %42 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %46 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %45, i32 0, i32 5
  %47 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %46, align 8
  %48 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %49 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %48, i32 0, i32 3
  store %struct.cmdbuf_t* %47, %struct.cmdbuf_t** %49, align 8
  %50 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %51 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %50, i32 0, i32 3
  %52 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %51, align 8
  %53 = icmp ne %struct.cmdbuf_t* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %22
  %55 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %56 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %55, i32 0, i32 3
  %57 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %56, align 8
  %58 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %57, i32 0, i32 4
  store i32* null, i32** %58, align 8
  %59 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %60 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %59, i32 0, i32 3
  %61 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %60, align 8
  %62 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %65 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %64, i32 0, i32 5
  store i64 %63, i64* %65, align 8
  br label %71

66:                                               ; preds = %22
  %67 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %68 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %67, i32 0, i32 6
  store i32* null, i32** %68, align 8
  %69 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %70 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %69, i32 0, i32 5
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %66, %54
  %72 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %73 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %72, i32 0, i32 4
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %77 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %82 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @tasklet_schedule(i64 %83)
  br label %85

85:                                               ; preds = %80, %71
  %86 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %87 = call i32 @kfree(%struct.cmdbuf_t* %86)
  %88 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %89 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %88, i32 0, i32 3
  %90 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %89, align 8
  store %struct.cmdbuf_t* %90, %struct.cmdbuf_t** %3, align 8
  br label %91

91:                                               ; preds = %85, %17
  %92 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %93 = icmp ne %struct.cmdbuf_t* %92, null
  br i1 %93, label %94, label %180

94:                                               ; preds = %91
  %95 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %96 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %99 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @min(i64 %97, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* @DEBUG_OUTPUT, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %106 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %109 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %112 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %115 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @usb_sndbulkpipe(i32 %113, i32 %116)
  %118 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %119 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %122 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %120, %123
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @gigaset_write_bulk_callback, align 4
  %127 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %128 = call i32 @usb_fill_bulk_urb(i32 %107, i32 %110, i32 %117, i64 %124, i32 %125, i32 %126, %struct.cardstate* %127)
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %132 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, %130
  store i64 %134, i64* %132, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %138 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %139, %136
  store i64 %140, i64* %138, align 8
  %141 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %142 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %141, i32 0, i32 0
  store i32 1, i32* %142, align 4
  %143 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %144 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %143, i32 0, i32 1
  %145 = load i64, i64* %4, align 8
  %146 = call i32 @spin_lock_irqsave(i32* %144, i64 %145)
  %147 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %148 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %94
  %152 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %153 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @GFP_ATOMIC, align 4
  %156 = call i32 @usb_submit_urb(i32 %154, i32 %155)
  br label %160

157:                                              ; preds = %94
  %158 = load i32, i32* @ENODEV, align 4
  %159 = sub nsw i32 0, %158
  br label %160

160:                                              ; preds = %157, %151
  %161 = phi i32 [ %156, %151 ], [ %159, %157 ]
  store i32 %161, i32* %6, align 4
  %162 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %163 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %162, i32 0, i32 1
  %164 = load i64, i64* %4, align 8
  %165 = call i32 @spin_unlock_irqrestore(i32* %163, i64 %164)
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %160
  %169 = load %struct.usb_cardstate*, %struct.usb_cardstate** %7, align 8
  %170 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %169, i32 0, i32 0
  store i32 0, i32* %170, align 4
  %171 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %172 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sub nsw i32 0, %174
  %176 = call i32 @dev_err(i32 %173, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %175)
  %177 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %178 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %177, i32 0, i32 0
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %168, %160
  br label %180

180:                                              ; preds = %179, %91
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %3, align 8
  %183 = icmp ne %struct.cmdbuf_t* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, 0
  br label %187

187:                                              ; preds = %184, %181
  %188 = phi i1 [ false, %181 ], [ %186, %184 ]
  br i1 %188, label %17, label %189

189:                                              ; preds = %187
  %190 = load i32, i32* %6, align 4
  ret i32 %190
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gig_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i64) #1

declare dso_local i32 @kfree(%struct.cmdbuf_t*) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, i64, i32, i32, %struct.cardstate*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
