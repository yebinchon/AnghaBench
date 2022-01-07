; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_isocdata.c_gigaset_isoc_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_isocdata.c_gigaset_isoc_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbuf_t = type { i32, i32, i8*, %struct.cardstate* }
%struct.cardstate = type { i64 }

@DEBUG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"buffer state: %u -> %u\00", align 1
@RBUFSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"processing %u bytes\00", align 1
@MS_LOCKED = common dso_local global i64 0, align 8
@DEBUG_LOCKCMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"received response\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"setting head to %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_isoc_input(%struct.inbuf_t* %0) #0 {
  %2 = alloca %struct.inbuf_t*, align 8
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.inbuf_t* %0, %struct.inbuf_t** %2, align 8
  %8 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %9 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %8, i32 0, i32 3
  %10 = load %struct.cardstate*, %struct.cardstate** %9, align 8
  store %struct.cardstate* %10, %struct.cardstate** %3, align 8
  %11 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %12 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %72, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %17 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %79

20:                                               ; preds = %14
  %21 = load i32, i32* @DEBUG_INTR, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @RBUFSIZE, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %20
  %31 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %32 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8* %36, i8** %7, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sub i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @DEBUG_INTR, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %44 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MS_LOCKED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %30
  %49 = load i32, i32* @DEBUG_LOCKCMD, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @gigaset_dbg_buffer(i32 %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %50, i8* %51)
  %53 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %54 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %53, i32 0, i32 3
  %55 = load %struct.cardstate*, %struct.cardstate** %54, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @gigaset_if_receive(%struct.cardstate* %55, i8* %56, i32 %57)
  br label %64

59:                                               ; preds = %30
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %63 = call i32 @cmd_loop(i8* %60, i32 %61, %struct.inbuf_t* %62)
  br label %64

64:                                               ; preds = %59, %48
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %5, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @RBUFSIZE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %64
  %73 = load i32, i32* @DEBUG_INTR, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %78 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %14

79:                                               ; preds = %14
  ret void
}

declare dso_local i32 @gig_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @gigaset_dbg_buffer(i32, i8*, i32, i8*) #1

declare dso_local i32 @gigaset_if_receive(%struct.cardstate*, i8*, i32) #1

declare dso_local i32 @cmd_loop(i8*, i32, %struct.inbuf_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
