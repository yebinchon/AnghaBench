; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsencrypt.c_build_avpair_blob.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsencrypt.c_build_avpair_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }
%struct.nls_table = type { i32 }
%struct.ntlmssp2_name = type { i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"WORKGROUP\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NTLMSSP_AV_NB_DOMAIN_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ses*, %struct.nls_table*)* @build_avpair_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_avpair_blob(%struct.cifs_ses* %0, %struct.nls_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_ses*, align 8
  %5 = alloca %struct.nls_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ntlmssp2_name*, align 8
  store %struct.cifs_ses* %0, %struct.cifs_ses** %4, align 8
  store %struct.nls_table* %1, %struct.nls_table** %5, align 8
  store i32 32, i32* %7, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %11 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %12 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @kstrdup(i8* %16, i32 %17)
  %19 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %20 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %22 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %88

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %31 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @strlen(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul i32 2, %35
  %37 = add i32 %34, %36
  %38 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %39 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %42 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kzalloc(i32 %44, i32 %45)
  %47 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %48 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  %50 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %51 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %29
  %56 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %57 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %88

61:                                               ; preds = %29
  %62 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %63 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %9, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = bitcast i8* %66 to %struct.ntlmssp2_name*
  store %struct.ntlmssp2_name* %67, %struct.ntlmssp2_name** %10, align 8
  %68 = load i32, i32* @NTLMSSP_AV_NB_DOMAIN_NAME, align 4
  %69 = call i8* @cpu_to_le16(i32 %68)
  %70 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %10, align 8
  %71 = getelementptr inbounds %struct.ntlmssp2_name, %struct.ntlmssp2_name* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = mul i32 2, %72
  %74 = call i8* @cpu_to_le16(i32 %73)
  %75 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %10, align 8
  %76 = getelementptr inbounds %struct.ntlmssp2_name, %struct.ntlmssp2_name* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.ntlmssp2_name*, %struct.ntlmssp2_name** %10, align 8
  %78 = bitcast %struct.ntlmssp2_name* %77 to i8*
  %79 = getelementptr inbounds i8, i8* %78, i64 16
  store i8* %79, i8** %9, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %83 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.nls_table*, %struct.nls_table** %5, align 8
  %87 = call i32 @cifs_strtoUTF16(i32* %81, i32 %84, i32 %85, %struct.nls_table* %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %61, %55, %25
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cifs_strtoUTF16(i32*, i32, i32, %struct.nls_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
