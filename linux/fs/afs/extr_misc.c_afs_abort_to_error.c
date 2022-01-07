
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int EACCES ;
 int EBADRQC ;
 int EBUSY ;
 int EDEADLK ;
 int EDQUOT ;
 int EEXIST ;
 int EFBIG ;
 int EINVAL ;
 int EIO ;
 int EISDIR ;
 int EKEYEXPIRED ;
 int EKEYREJECTED ;
 int ELOOP ;
 int EMLINK ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int ENOLCK ;
 int ENOMEDIUM ;
 int ENOSPC ;
 int ENOTDIR ;
 int ENOTEMPTY ;
 int ENOTSUPP ;
 int ENXIO ;
 int EPERM ;
 int EPROTO ;
 int EREMOTEIO ;
 int EROFS ;
int afs_abort_to_error(u32 abort_code)
{
 switch (abort_code) {

 case 13: return -EACCES;
 case 27: return -EFBIG;
 case 30: return -EROFS;


 case 129: return -EIO;
 case 134: return -ENOENT;
 case 133: return -ENOMEDIUM;
 case 128: return -EEXIST;
 case 135: return -EIO;
 case 132: return -ENOENT;
 case 131: return -EEXIST;
 case 137: return -ENOSPC;
 case 130: return -EDQUOT;
 case 138: return -EBUSY;
 case 136: return -ENXIO;


 case 181: return -EEXIST;
 case 180: return -EREMOTEIO;
 case 179: return -EEXIST;
 case 187: return -EREMOTEIO;
 case 178: return -ENOMEDIUM;
 case 185: return -ENOMEDIUM;
 case 184: return -ENOMEDIUM;
 case 196: return -EINVAL;
 case 197: return -EINVAL;
 case 188: return -EINVAL;
 case 192: return -EINVAL;
 case 195: return -EINVAL;
 case 174: return -EFBIG;
 case 176: return -ENOENT;
 case 186: return -EEXIST;
 case 172: return -ENOENT;
 case 194: return -EINVAL;
 case 171: return -EINVAL;
 case 198: return -EINVAL;
 case 190: return -EINVAL;
 case 182: return -EINVAL;
 case 183: return -EBUSY;
 case 189: return -EBADRQC;
 case 193: return -EINVAL;
 case 173: return -EREMOTEIO;
 case 191: return -EINVAL;
 case 175: return -EACCES;
 case 177: return -EREMOTEIO;


 case 140: return -EPERM;
 case 146: return -ENOENT;
 case 156: return -EACCES;
 case 155: return -EBUSY;
 case 152: return -EEXIST;
 case 142: return -ENOTDIR;
 case 150: return -EISDIR;
 case 151: return -EFBIG;
 case 143: return -ENOSPC;
 case 139: return -EROFS;
 case 148: return -EMLINK;
 case 154: return -EDEADLK;
 case 147: return -ENAMETOOLONG;
 case 145: return -ENOLCK;
 case 141: return -ENOTEMPTY;
 case 149: return -ELOOP;
 case 144: return -ENOMEDIUM;
 case 153: return -EDQUOT;


 case 164: return -EPROTO;
 case 160: return -EPROTO;
 case 163: return -EKEYREJECTED;
 case 158: return -EKEYREJECTED;
 case 161: return -EPROTO;
 case 162: return -EKEYREJECTED;
 case 169: return -EKEYREJECTED;
 case 168: return -EKEYREJECTED;
 case 157: return -EKEYREJECTED;
 case 166: return -EKEYEXPIRED;
 case 159: return -EKEYREJECTED;
 case 167: return -EKEYREJECTED;
 case 165: return -EKEYREJECTED;

 case 170: return -ENOTSUPP;

 default: return -EREMOTEIO;
 }
}
