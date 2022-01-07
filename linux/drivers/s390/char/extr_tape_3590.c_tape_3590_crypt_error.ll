; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_crypt_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_crypt_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tape_request = type { i32 }
%struct.irb = type { i64 }
%struct.tape_3590_sense = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@EKEYREJECTED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"The tape unit failed to obtain the encryption key from EKM\0A\00", align 1
@ENOKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.tape_request*, %struct.irb*)* @tape_3590_crypt_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3590_crypt_error(%struct.tape_device* %0, %struct.tape_request* %1, %struct.irb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tape_device*, align 8
  %6 = alloca %struct.tape_request*, align 8
  %7 = alloca %struct.irb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %5, align 8
  store %struct.tape_request* %1, %struct.tape_request** %6, align 8
  store %struct.irb* %2, %struct.irb** %7, align 8
  %11 = load %struct.irb*, %struct.irb** %7, align 8
  %12 = getelementptr inbounds %struct.irb, %struct.irb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.tape_3590_sense*
  %15 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 10
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 60977
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %33 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %34 = load %struct.irb*, %struct.irb** %7, align 8
  %35 = load i32, i32* @EKEYREJECTED, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @tape_3590_erp_basic(%struct.tape_device* %32, %struct.tape_request* %33, %struct.irb* %34, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %63

38:                                               ; preds = %28, %3
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %51

44:                                               ; preds = %41, %38
  %45 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %46 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %47 = load %struct.irb*, %struct.irb** %7, align 8
  %48 = load i32, i32* @ENOTCONN, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i32 @tape_3590_erp_basic(%struct.tape_device* %45, %struct.tape_request* %46, %struct.irb* %47, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %63

51:                                               ; preds = %41
  %52 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %53 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %58 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %59 = load %struct.irb*, %struct.irb** %7, align 8
  %60 = load i32, i32* @ENOKEY, align 4
  %61 = sub nsw i32 0, %60
  %62 = call i32 @tape_3590_erp_basic(%struct.tape_device* %57, %struct.tape_request* %58, %struct.irb* %59, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %51, %44, %31
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @tape_3590_erp_basic(%struct.tape_device*, %struct.tape_request*, %struct.irb*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
