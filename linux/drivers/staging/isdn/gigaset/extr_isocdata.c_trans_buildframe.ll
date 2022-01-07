; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_isocdata.c_trans_buildframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_isocdata.c_trans_buildframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isowbuf_t = type { i32, i8*, i8 }

@DEBUG_ISO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"can't put %d bytes\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@DEBUG_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"put %d bytes\00", align 1
@DEBUG_STREAM_DUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"snd data\00", align 1
@BAS_OUTBUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isowbuf_t*, i8*, i32)* @trans_buildframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trans_buildframe(%struct.isowbuf_t* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.isowbuf_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.isowbuf_t* %0, %struct.isowbuf_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sle i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.isowbuf_t*, %struct.isowbuf_t** %5, align 8
  %17 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  br label %75

19:                                               ; preds = %3
  %20 = load %struct.isowbuf_t*, %struct.isowbuf_t** %5, align 8
  %21 = call i32 @isowbuf_freebytes(%struct.isowbuf_t* %20)
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load %struct.isowbuf_t*, %struct.isowbuf_t** %5, align 8
  %26 = call i64 @isowbuf_startwrite(%struct.isowbuf_t* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @DEBUG_ISO, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @gig_dbg(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %75

34:                                               ; preds = %24
  %35 = load i32, i32* @DEBUG_STREAM, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @gig_dbg(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @DEBUG_STREAM_DUMP, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dump_bytes(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 %40)
  %42 = load %struct.isowbuf_t*, %struct.isowbuf_t** %5, align 8
  %43 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %62, %34
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  %48 = load i8, i8* %46, align 1
  %49 = zext i8 %48 to i32
  %50 = call zeroext i8 @bitrev8(i32 %49)
  store i8 %50, i8* %9, align 1
  %51 = load i8, i8* %9, align 1
  %52 = load %struct.isowbuf_t*, %struct.isowbuf_t** %5, align 8
  %53 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8 %51, i8* %58, align 1
  %59 = load i32, i32* @BAS_OUTBUFSIZE, align 4
  %60 = load i32, i32* %8, align 4
  %61 = srem i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %45
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %7, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %45, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.isowbuf_t*, %struct.isowbuf_t** %5, align 8
  %69 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i8, i8* %9, align 1
  %71 = load %struct.isowbuf_t*, %struct.isowbuf_t** %5, align 8
  %72 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %71, i32 0, i32 2
  store i8 %70, i8* %72, align 8
  %73 = load %struct.isowbuf_t*, %struct.isowbuf_t** %5, align 8
  %74 = call i32 @isowbuf_donewrite(%struct.isowbuf_t* %73)
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %66, %28, %15
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @isowbuf_freebytes(%struct.isowbuf_t*) #1

declare dso_local i64 @isowbuf_startwrite(%struct.isowbuf_t*) #1

declare dso_local i32 @gig_dbg(i32, i8*, i32) #1

declare dso_local i32 @dump_bytes(i32, i8*, i8*, i32) #1

declare dso_local zeroext i8 @bitrev8(i32) #1

declare dso_local i32 @isowbuf_donewrite(%struct.isowbuf_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
