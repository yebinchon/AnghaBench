; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_format_node_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_format_node_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_descriptor = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@PARAMS_LEN = common dso_local global i64 0, align 8
@NODEID_LEN = common dso_local global i64 0, align 8
@ND_VALIDITY_VALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%02x,%06x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%04X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.node_descriptor*)* @format_node_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_node_data(i8* %0, i8* %1, %struct.node_descriptor* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.node_descriptor*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.node_descriptor* %2, %struct.node_descriptor** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* @PARAMS_LEN, align 8
  %9 = call i32 @memset(i8* %7, i32 0, i64 %8)
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* @NODEID_LEN, align 8
  %12 = call i32 @memset(i8* %10, i32 0, i64 %11)
  %13 = load %struct.node_descriptor*, %struct.node_descriptor** %6, align 8
  %14 = getelementptr inbounds %struct.node_descriptor, %struct.node_descriptor* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ND_VALIDITY_VALID, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* @PARAMS_LEN, align 8
  %21 = sub nsw i64 %20, 1
  %22 = call i32 @strncpy(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* @NODEID_LEN, align 8
  %25 = sub nsw i64 %24, 1
  %26 = call i32 @strncpy(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %67

27:                                               ; preds = %3
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* @PARAMS_LEN, align 8
  %30 = load %struct.node_descriptor*, %struct.node_descriptor** %6, align 8
  %31 = getelementptr inbounds %struct.node_descriptor, %struct.node_descriptor* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.node_descriptor*, %struct.node_descriptor** %6, align 8
  %34 = getelementptr inbounds %struct.node_descriptor, %struct.node_descriptor* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snprintf(i8* %28, i64 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.node_descriptor*, %struct.node_descriptor** %6, align 8
  %39 = getelementptr inbounds %struct.node_descriptor, %struct.node_descriptor* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @store_ebcdic(i8* %37, i32 %40, i32 4, i8 signext 47)
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.node_descriptor*, %struct.node_descriptor** %6, align 8
  %44 = getelementptr inbounds %struct.node_descriptor, %struct.node_descriptor* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @store_ebcdic(i8* %42, i32 %45, i32 4, i8 signext 44)
  store i8* %46, i8** %5, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.node_descriptor*, %struct.node_descriptor** %6, align 8
  %49 = getelementptr inbounds %struct.node_descriptor, %struct.node_descriptor* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @store_ebcdic(i8* %47, i32 %50, i32 4, i8 signext 46)
  store i8* %51, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load %struct.node_descriptor*, %struct.node_descriptor** %6, align 8
  %54 = getelementptr inbounds %struct.node_descriptor, %struct.node_descriptor* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @store_ebcdic(i8* %52, i32 %55, i32 4, i8 signext 0)
  store i8* %56, i8** %5, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.node_descriptor*, %struct.node_descriptor** %6, align 8
  %59 = getelementptr inbounds %struct.node_descriptor, %struct.node_descriptor* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @store_ebcdic(i8* %57, i32 %60, i32 4, i8 signext 44)
  store i8* %61, i8** %5, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load %struct.node_descriptor*, %struct.node_descriptor** %6, align 8
  %64 = getelementptr inbounds %struct.node_descriptor, %struct.node_descriptor* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %27, %18
  ret void
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i32) #1

declare dso_local i8* @store_ebcdic(i8*, i32, i32, i8 signext) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
