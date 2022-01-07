; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_checkSMB.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_checkSMB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32 }
%struct.smb_hdr = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"checkSMB Length: 0x%x, smb_buf_length: 0x%x\0A\00", align 1
@VFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"rcvd invalid byte count (bcc)\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Length less than smb header size\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Length read does not match RFC1001 length %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Calculated size %u vs length %u mismatch for mid=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"RFC1001 size %u smaller than SMB for mid=%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"RFC1001 size %u more than 512 bytes larger than SMB for mid=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkSMB(i8* %0, i32 %1, %struct.TCP_Server_Info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TCP_Server_Info*, align 8
  %8 = alloca %struct.smb_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TCP_Server_Info* %2, %struct.TCP_Server_Info** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.smb_hdr*
  store %struct.smb_hdr* %14, %struct.smb_hdr** %8, align 8
  %15 = load %struct.smb_hdr*, %struct.smb_hdr** %8, align 8
  %16 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @be32_to_cpu(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @FYI, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %24, 26
  br i1 %25, label %26, label %69

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = icmp uge i64 %28, 23
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.smb_hdr*, %struct.smb_hdr** %8, align 8
  %32 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.smb_hdr*, %struct.smb_hdr** %8, align 8
  %38 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  store i32 0, i32* %4, align 4
  br label %146

39:                                               ; preds = %30, %26
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = icmp eq i64 %41, 25
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load %struct.smb_hdr*, %struct.smb_hdr** %8, align 8
  %45 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.smb_hdr*, %struct.smb_hdr** %8, align 8
  %50 = bitcast %struct.smb_hdr* %49 to i8*
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 24
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 25
  store i8 0, i8* %58, align 1
  store i32 0, i32* %4, align 4
  br label %146

59:                                               ; preds = %48
  %60 = load i32, i32* @VFS, align 4
  %61 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %65

62:                                               ; preds = %43, %39
  %63 = load i32, i32* @VFS, align 4
  %64 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %146

69:                                               ; preds = %3
  %70 = load %struct.smb_hdr*, %struct.smb_hdr** %8, align 8
  %71 = call i64 @check_smb_hdr(%struct.smb_hdr* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %146

76:                                               ; preds = %69
  %77 = load %struct.smb_hdr*, %struct.smb_hdr** %8, align 8
  %78 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %79 = call i32 @smbCalcSize(%struct.smb_hdr* %77, %struct.TCP_Server_Info* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 4, %80
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load i32, i32* @VFS, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %85, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %146

90:                                               ; preds = %76
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 4, %91
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %145

95:                                               ; preds = %90
  %96 = load %struct.smb_hdr*, %struct.smb_hdr** %8, align 8
  %97 = call i32 @get_mid(%struct.smb_hdr* %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp sgt i32 %98, 65536
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 4, %105
  %107 = and i32 %106, 65535
  %108 = load i32, i32* %10, align 4
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %146

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %100, %95
  %114 = load i32, i32* @FYI, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 4, %116
  %118 = load i32, i32* %12, align 4
  %119 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %114, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %115, i32 %117, i32 %118)
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 4, %120
  %122 = load i32, i32* %10, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %113
  %125 = load i32, i32* @VFS, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %125, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %146

131:                                              ; preds = %113
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 512
  %135 = icmp sgt i32 %132, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load i32, i32* @VFS, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %137, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i32 %138, i32 %139)
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %146

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144, %90
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %136, %124, %111, %84, %73, %66, %56, %36
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i64 @check_smb_hdr(%struct.smb_hdr*) #1

declare dso_local i32 @smbCalcSize(%struct.smb_hdr*, %struct.TCP_Server_Info*) #1

declare dso_local i32 @get_mid(%struct.smb_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
