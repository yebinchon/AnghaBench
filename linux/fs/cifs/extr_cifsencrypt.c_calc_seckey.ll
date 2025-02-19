; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsencrypt.c_calc_seckey.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsencrypt.c_calc_seckey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.arc4_ctx = type { i32 }

@CIFS_SESS_KEY_SIZE = common dso_local global i32 0, align 4
@fips_enabled = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"could not allocate arc4 context\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CIFS_CPHTXT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calc_seckey(%struct.cifs_ses* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cifs_ses*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.arc4_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.cifs_ses* %0, %struct.cifs_ses** %3, align 8
  %8 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i64, i64* @fips_enabled, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %59

17:                                               ; preds = %1
  %18 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %19 = call i32 @get_random_bytes(i8* %11, i32 %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.arc4_ctx* @kmalloc(i32 4, i32 %20)
  store %struct.arc4_ctx* %21, %struct.arc4_ctx** %6, align 8
  %22 = load %struct.arc4_ctx*, %struct.arc4_ctx** %6, align 8
  %23 = icmp ne %struct.arc4_ctx* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @VFS, align 4
  %26 = call i32 @cifs_dbg(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %59

29:                                               ; preds = %17
  %30 = load %struct.arc4_ctx*, %struct.arc4_ctx** %6, align 8
  %31 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %32 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %36 = call i32 @arc4_setkey(%struct.arc4_ctx* %30, i32 %34, i32 %35)
  %37 = load %struct.arc4_ctx*, %struct.arc4_ctx** %6, align 8
  %38 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %39 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CIFS_CPHTXT_SIZE, align 4
  %44 = call i32 @arc4_crypt(%struct.arc4_ctx* %37, i32 %42, i8* %11, i32 %43)
  %45 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %46 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %50 = call i32 @memcpy(i32 %48, i8* %11, i32 %49)
  %51 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %52 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %53 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %56 = call i32 @memzero_explicit(i8* %11, i32 %55)
  %57 = load %struct.arc4_ctx*, %struct.arc4_ctx** %6, align 8
  %58 = call i32 @kzfree(%struct.arc4_ctx* %57)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %59

59:                                               ; preds = %29, %24, %14
  %60 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_random_bytes(i8*, i32) #2

declare dso_local %struct.arc4_ctx* @kmalloc(i32, i32) #2

declare dso_local i32 @cifs_dbg(i32, i8*) #2

declare dso_local i32 @arc4_setkey(%struct.arc4_ctx*, i32, i32) #2

declare dso_local i32 @arc4_crypt(%struct.arc4_ctx*, i32, i8*, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @memzero_explicit(i8*, i32) #2

declare dso_local i32 @kzfree(%struct.arc4_ctx*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
