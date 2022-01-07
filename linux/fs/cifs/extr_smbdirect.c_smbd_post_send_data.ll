; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_post_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_post_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_connection = type { i32 }
%struct.kvec = type { i64, i32 }
%struct.scatterlist = type { i32 }

@SMBDIRECT_MAX_SGE = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Can't fit data to SGL, n_vec=%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbd_connection*, %struct.kvec*, i32, i32)* @smbd_post_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbd_post_send_data(%struct.smbd_connection* %0, %struct.kvec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smbd_connection*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.smbd_connection* %0, %struct.smbd_connection** %6, align 8
  store %struct.kvec* %1, %struct.kvec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @SMBDIRECT_MAX_SGE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca %struct.scatterlist, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @SMBDIRECT_MAX_SGE, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i32, i32* @VFS, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @cifs_dbg(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %70

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @sg_init_table(%struct.scatterlist* %18, i32 %29)
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %62, %28
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %31
  %36 = load %struct.kvec*, %struct.kvec** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.kvec, %struct.kvec* %36, i64 %38
  %40 = getelementptr inbounds %struct.kvec, %struct.kvec* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %18, i64 %47
  %49 = load %struct.kvec*, %struct.kvec** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.kvec, %struct.kvec* %49, i64 %51
  %53 = getelementptr inbounds %struct.kvec, %struct.kvec* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.kvec*, %struct.kvec** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.kvec, %struct.kvec* %55, i64 %57
  %59 = getelementptr inbounds %struct.kvec, %struct.kvec* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @sg_set_buf(%struct.scatterlist* %48, i32 %54, i64 %60)
  br label %62

62:                                               ; preds = %35
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %31

65:                                               ; preds = %31
  %66 = load %struct.smbd_connection*, %struct.smbd_connection** %6, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @smbd_post_send_sgl(%struct.smbd_connection* %66, %struct.scatterlist* %18, i32 %67, i32 %68)
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %70

70:                                               ; preds = %65, %22
  %71 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #2

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #2

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32, i64) #2

declare dso_local i32 @smbd_post_send_sgl(%struct.smbd_connection*, %struct.scatterlist*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
