; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_sess_alloc_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_sess_alloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sess_data = type { i32, %struct.TYPE_2__*, %struct.cifs_ses* }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.cifs_ses = type { i32 }
%struct.smb_hdr = type { i32 }

@SMB_COM_SESSION_SETUP_ANDX = common dso_local global i32 0, align 4
@CIFS_SMALL_BUFFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CIFS_NO_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sess_data*, i32)* @sess_alloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sess_alloc_buffer(%struct.sess_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sess_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_ses*, align 8
  %8 = alloca %struct.smb_hdr*, align 8
  store %struct.sess_data* %0, %struct.sess_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sess_data*, %struct.sess_data** %4, align 8
  %10 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %9, i32 0, i32 2
  %11 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  store %struct.cifs_ses* %11, %struct.cifs_ses** %7, align 8
  %12 = load i32, i32* @SMB_COM_SESSION_SETUP_ANDX, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %15 = bitcast %struct.smb_hdr** %8 to i8**
  %16 = call i32 @small_smb_init_no_tc(i32 %12, i32 %13, %struct.cifs_ses* %14, i8** %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %77

21:                                               ; preds = %2
  %22 = load %struct.smb_hdr*, %struct.smb_hdr** %8, align 8
  %23 = bitcast %struct.smb_hdr* %22 to i8*
  %24 = load %struct.sess_data*, %struct.sess_data** %4, align 8
  %25 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %23, i8** %28, align 8
  %29 = load %struct.smb_hdr*, %struct.smb_hdr** %8, align 8
  %30 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @be32_to_cpu(i32 %31)
  %33 = add nsw i64 %32, 4
  %34 = load %struct.sess_data*, %struct.sess_data** %4, align 8
  %35 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i64 %33, i64* %38, align 8
  %39 = load i32, i32* @CIFS_SMALL_BUFFER, align 4
  %40 = load %struct.sess_data*, %struct.sess_data** %4, align 8
  %41 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kmalloc(i32 2000, i32 %42)
  %44 = load %struct.sess_data*, %struct.sess_data** %4, align 8
  %45 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i8* %43, i8** %48, align 8
  %49 = load %struct.sess_data*, %struct.sess_data** %4, align 8
  %50 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %21
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %60

59:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %77

60:                                               ; preds = %56
  %61 = load %struct.smb_hdr*, %struct.smb_hdr** %8, align 8
  %62 = call i32 @kfree(%struct.smb_hdr* %61)
  %63 = load %struct.sess_data*, %struct.sess_data** %4, align 8
  %64 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i8* null, i8** %67, align 8
  %68 = load %struct.sess_data*, %struct.sess_data** %4, align 8
  %69 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @CIFS_NO_BUFFER, align 4
  %74 = load %struct.sess_data*, %struct.sess_data** %4, align 8
  %75 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %60, %59, %19
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @small_smb_init_no_tc(i32, i32, %struct.cifs_ses*, i8**) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.smb_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
