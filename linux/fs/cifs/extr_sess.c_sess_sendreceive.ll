; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_sess_sendreceive.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_sess_sendreceive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sess_data = type { %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.smb_hdr = type { i32 }
%struct.kvec = type { i32, i32* }

@CIFS_LOG_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sess_data*)* @sess_sendreceive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sess_sendreceive(%struct.sess_data* %0) #0 {
  %2 = alloca %struct.sess_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_hdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvec, align 8
  store %struct.sess_data* %0, %struct.sess_data** %2, align 8
  %7 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %8 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.smb_hdr*
  store %struct.smb_hdr* %13, %struct.smb_hdr** %4, align 8
  %14 = bitcast %struct.kvec* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %16 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %22 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %20, %26
  store i64 %27, i64* %5, align 8
  %28 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %29 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @be32_to_cpu(i32 %30)
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @cpu_to_be32(i64 %33)
  %35 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %36 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %39 = call i32 @put_bcc(i64 %37, %struct.smb_hdr* %38)
  %40 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %41 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %44 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %47 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %50 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %49, i32 0, i32 1
  %51 = load i32, i32* @CIFS_LOG_ERROR, align 4
  %52 = call i32 @SendReceive2(i32 %42, i32 %45, %struct.TYPE_3__* %48, i32 3, i32* %50, i32 %51, %struct.kvec* %6)
  store i32 %52, i32* %3, align 4
  %53 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %54 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @cifs_small_buf_release(i64 %58)
  %60 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %61 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 0
  %64 = call i32 @memcpy(%struct.TYPE_3__* %63, %struct.kvec* %6, i32 16)
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_be32(i64) #2

declare dso_local i64 @be32_to_cpu(i32) #2

declare dso_local i32 @put_bcc(i64, %struct.smb_hdr*) #2

declare dso_local i32 @SendReceive2(i32, i32, %struct.TYPE_3__*, i32, i32*, i32, %struct.kvec*) #2

declare dso_local i32 @cifs_small_buf_release(i64) #2

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.kvec*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
