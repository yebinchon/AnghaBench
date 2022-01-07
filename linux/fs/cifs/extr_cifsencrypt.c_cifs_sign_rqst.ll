; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsencrypt.c_cifs_sign_rqst.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsencrypt.c_cifs_sign_rqst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rqst = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TCP_Server_Info = type { i64, i64, i32 }
%struct.smb_hdr = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SMBFLG2_SECURITY_SIGNATURE = common dso_local global i32 0, align 4
@CifsNeedNegotiate = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"BSRSPYL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_sign_rqst(%struct.smb_rqst* %0, %struct.TCP_Server_Info* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_rqst*, align 8
  %6 = alloca %struct.TCP_Server_Info*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [20 x i8], align 16
  %10 = alloca %struct.smb_hdr*, align 8
  store %struct.smb_rqst* %0, %struct.smb_rqst** %5, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %12 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.smb_hdr*
  store %struct.smb_hdr* %17, %struct.smb_hdr** %10, align 8
  %18 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %19 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 4
  br i1 %24, label %40, label %25

25:                                               ; preds = %3
  %26 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %27 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 4
  %33 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %34 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %32, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %25, %3
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %122

43:                                               ; preds = %25
  %44 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %45 = icmp eq %struct.smb_hdr* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %48 = icmp eq %struct.TCP_Server_Info* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46, %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %122

52:                                               ; preds = %46
  %53 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %54 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SMBFLG2_SECURITY_SIGNATURE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %61 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CifsNeedNegotiate, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59, %52
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %122

67:                                               ; preds = %59
  %68 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %69 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %67
  %73 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %74 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @memcpy(i32 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 8)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %122

79:                                               ; preds = %67
  %80 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %81 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @cpu_to_le32(i64 %82)
  %84 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %85 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 8
  %88 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %89 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %93 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  %96 = load i64*, i64** %7, align 8
  store i64 %95, i64* %96, align 8
  %97 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %98 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %98, align 8
  %101 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %102 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %103 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %104 = call i32 @cifs_calc_signature(%struct.smb_rqst* %101, %struct.TCP_Server_Info* %102, i8* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %79
  %108 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %109 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @memset(i32 %111, i32 0, i32 8)
  br label %120

113:                                              ; preds = %79
  %114 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %115 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %119 = call i32 @memcpy(i32 %117, i8* %118, i32 8)
  br label %120

120:                                              ; preds = %113, %107
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %72, %65, %49, %40
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @cifs_calc_signature(%struct.smb_rqst*, %struct.TCP_Server_Info*, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
