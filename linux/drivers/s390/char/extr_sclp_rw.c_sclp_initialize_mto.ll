; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_rw.c_sclp_initialize_mto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_rw.c_sclp_initialize_mto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_buffer = type { i8*, i64, %struct.msg_buf*, %struct.sccb_header* }
%struct.msg_buf = type { %struct.mdb, %struct.TYPE_3__ }
%struct.mdb = type { %struct.mto, %struct.go, %struct.TYPE_4__ }
%struct.mto = type { i32, i32, i32 }
%struct.go = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sccb_header = type { i32 }

@MAX_SCCB_ROOM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EVTYP_MSG = common dso_local global i32 0, align 4
@LNTPFLGS_ENDTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sclp_buffer*, i32)* @sclp_initialize_mto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_initialize_mto(%struct.sclp_buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sclp_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sccb_header*, align 8
  %7 = alloca %struct.msg_buf*, align 8
  %8 = alloca %struct.mdb*, align 8
  %9 = alloca %struct.go*, align 8
  %10 = alloca %struct.mto*, align 8
  %11 = alloca i32, align 4
  store %struct.sclp_buffer* %0, %struct.sclp_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 44, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %16, i32 0, i32 3
  %18 = load %struct.sccb_header*, %struct.sccb_header** %17, align 8
  store %struct.sccb_header* %18, %struct.sccb_header** %6, align 8
  %19 = load i32, i32* @MAX_SCCB_ROOM, align 4
  %20 = load %struct.sccb_header*, %struct.sccb_header** %6, align 8
  %21 = getelementptr inbounds %struct.sccb_header, %struct.sccb_header* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %86

29:                                               ; preds = %2
  %30 = load %struct.sccb_header*, %struct.sccb_header** %6, align 8
  %31 = ptrtoint %struct.sccb_header* %30 to i32
  %32 = load %struct.sccb_header*, %struct.sccb_header** %6, align 8
  %33 = getelementptr inbounds %struct.sccb_header, %struct.sccb_header* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to %struct.msg_buf*
  store %struct.msg_buf* %37, %struct.msg_buf** %7, align 8
  %38 = load %struct.msg_buf*, %struct.msg_buf** %7, align 8
  %39 = call i32 @memset(%struct.msg_buf* %38, i32 0, i32 44)
  %40 = load %struct.msg_buf*, %struct.msg_buf** %7, align 8
  %41 = getelementptr inbounds %struct.msg_buf, %struct.msg_buf* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 44, i32* %42, align 4
  %43 = load i32, i32* @EVTYP_MSG, align 4
  %44 = load %struct.msg_buf*, %struct.msg_buf** %7, align 8
  %45 = getelementptr inbounds %struct.msg_buf, %struct.msg_buf* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.msg_buf*, %struct.msg_buf** %7, align 8
  %48 = getelementptr inbounds %struct.msg_buf, %struct.msg_buf* %47, i32 0, i32 0
  store %struct.mdb* %48, %struct.mdb** %8, align 8
  %49 = load %struct.mdb*, %struct.mdb** %8, align 8
  %50 = getelementptr inbounds %struct.mdb, %struct.mdb* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 36, i32* %51, align 4
  %52 = load %struct.mdb*, %struct.mdb** %8, align 8
  %53 = getelementptr inbounds %struct.mdb, %struct.mdb* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.mdb*, %struct.mdb** %8, align 8
  %56 = getelementptr inbounds %struct.mdb, %struct.mdb* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32 -725302720, i32* %57, align 4
  %58 = load %struct.mdb*, %struct.mdb** %8, align 8
  %59 = getelementptr inbounds %struct.mdb, %struct.mdb* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  store i32 1, i32* %60, align 4
  %61 = load %struct.mdb*, %struct.mdb** %8, align 8
  %62 = getelementptr inbounds %struct.mdb, %struct.mdb* %61, i32 0, i32 1
  store %struct.go* %62, %struct.go** %9, align 8
  %63 = load %struct.go*, %struct.go** %9, align 8
  %64 = getelementptr inbounds %struct.go, %struct.go* %63, i32 0, i32 0
  store i32 8, i32* %64, align 4
  %65 = load %struct.go*, %struct.go** %9, align 8
  %66 = getelementptr inbounds %struct.go, %struct.go* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.mdb*, %struct.mdb** %8, align 8
  %68 = getelementptr inbounds %struct.mdb, %struct.mdb* %67, i32 0, i32 0
  store %struct.mto* %68, %struct.mto** %10, align 8
  %69 = load %struct.mto*, %struct.mto** %10, align 8
  %70 = getelementptr inbounds %struct.mto, %struct.mto* %69, i32 0, i32 0
  store i32 12, i32* %70, align 4
  %71 = load %struct.mto*, %struct.mto** %10, align 8
  %72 = getelementptr inbounds %struct.mto, %struct.mto* %71, i32 0, i32 1
  store i32 4, i32* %72, align 4
  %73 = load i32, i32* @LNTPFLGS_ENDTEXT, align 4
  %74 = load %struct.mto*, %struct.mto** %10, align 8
  %75 = getelementptr inbounds %struct.mto, %struct.mto* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.msg_buf*, %struct.msg_buf** %7, align 8
  %77 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %78 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %77, i32 0, i32 2
  store %struct.msg_buf* %76, %struct.msg_buf** %78, align 8
  %79 = load %struct.mto*, %struct.mto** %10, align 8
  %80 = getelementptr inbounds %struct.mto, %struct.mto* %79, i64 1
  %81 = bitcast %struct.mto* %80 to i8*
  %82 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %83 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %85 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %29, %26
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @memset(%struct.msg_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
