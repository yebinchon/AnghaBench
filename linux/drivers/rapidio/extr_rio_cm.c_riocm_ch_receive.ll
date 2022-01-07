; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_ch_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_ch_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_channel = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i32**, i32, i32** }

@RIO_CM_CONNECTED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@RIOCM_RX_RING_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"wait on %d returned %ld\00", align 1
@ETIME = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_channel*, i8**, i64)* @riocm_ch_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riocm_ch_receive(%struct.rio_channel* %0, i8** %1, i64 %2) #0 {
  %4 = alloca %struct.rio_channel*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.rio_channel* %0, %struct.rio_channel** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %12 = load i32, i32* @RIO_CM_CONNECTED, align 4
  %13 = call i64 @riocm_cmp(%struct.rio_channel* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  br label %154

18:                                               ; preds = %3
  %19 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %20 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RIOCM_RX_RING_SIZE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %154

28:                                               ; preds = %18
  %29 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %30 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %29, i32 0, i32 3
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @wait_for_completion_interruptible_timeout(i32* %30, i64 %31)
  store i64 %32, i64* %10, align 8
  %33 = load i32, i32* @WAIT, align 4
  %34 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %35 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @riocm_debug(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %37)
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* @ETIME, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %64

44:                                               ; preds = %28
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @ERESTARTSYS, align 8
  %47 = sub nsw i64 0, %46
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINTR, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %63

52:                                               ; preds = %44
  %53 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %54 = load i32, i32* @RIO_CM_CONNECTED, align 4
  %55 = call i64 @riocm_cmp(%struct.rio_channel* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @ECONNRESET, align 4
  %60 = sub nsw i32 0, %59
  br label %61

61:                                               ; preds = %58, %57
  %62 = phi i32 [ 0, %57 ], [ %60, %58 ]
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %61, %49
  br label %64

64:                                               ; preds = %63, %41
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %154

68:                                               ; preds = %64
  %69 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %70 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %69, i32 0, i32 0
  %71 = call i32 @spin_lock_bh(i32* %70)
  %72 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %73 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 4
  %75 = load i32**, i32*** %74, align 8
  %76 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %77 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32*, i32** %75, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = bitcast i32* %81 to i8*
  store i8* %82, i8** %7, align 8
  %83 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %84 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 4
  %86 = load i32**, i32*** %85, align 8
  %87 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %88 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32*, i32** %86, i64 %90
  store i32* null, i32** %91, align 8
  %92 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %93 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %94, align 8
  %97 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %98 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %99, align 8
  %102 = load i32, i32* @RIOCM_RX_RING_SIZE, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %105 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = urem i64 %107, %103
  store i64 %108, i64* %106, align 8
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %141, %68
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @RIOCM_RX_RING_SIZE, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %144

115:                                              ; preds = %111
  %116 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %117 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i32**, i32*** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %140

125:                                              ; preds = %115
  %126 = load i8*, i8** %7, align 8
  %127 = bitcast i8* %126 to i32*
  %128 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %129 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32**, i32*** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  store i32* %127, i32** %134, align 8
  %135 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %136 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  store i32 0, i32* %9, align 4
  br label %144

140:                                              ; preds = %115
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %111

144:                                              ; preds = %125, %111
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 @kfree(i8* %148)
  store i8* null, i8** %7, align 8
  br label %150

150:                                              ; preds = %147, %144
  %151 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %152 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %151, i32 0, i32 0
  %153 = call i32 @spin_unlock_bh(i32* %152)
  br label %154

154:                                              ; preds = %150, %67, %25, %15
  %155 = load i8*, i8** %7, align 8
  %156 = load i8**, i8*** %5, align 8
  store i8* %155, i8** %156, align 8
  %157 = load i32, i32* %9, align 4
  ret i32 %157
}

declare dso_local i64 @riocm_cmp(%struct.rio_channel*, i32) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i64) #1

declare dso_local i32 @riocm_debug(i32, i8*, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
